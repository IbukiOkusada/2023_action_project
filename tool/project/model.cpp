//==========================================================
//
// 階層構造のモデル処理 [model.cpp]
// Author : Ibuki Okusada
//
//==========================================================
#include "model.h"
#include "Xfile.h"
#include "manager.h"
#include "texture.h"
#include "renderer.h"

//==========================================================
// コンストラクタ
//==========================================================
CModel::CModel()
{
	// 値のクリア
	m_nIdxModel = -1;
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	//m_pParent = NULL;
}

//==========================================================
// デストラクタ
//==========================================================
CModel::~CModel()
{

}

//==========================================================
// 初期化処理
//==========================================================
HRESULT CModel::Init(const char *pFileName)
{
	CXFile *pModelFile = CManager::GetModelFile();	// モデルファイル情報のポインタ

	//Xファイル情報を読み込み
	m_nIdxModel = pModelFile->Regist(pFileName);

	return S_OK;
}

//==========================================================
// 終了処理
//==========================================================
void CModel::Uninit(void)
{
	// ポインタを使用していない状態にする
	m_pParentMtx = NULL;
}

//==========================================================
// 更新処理
//==========================================================
void CModel::Update(void)
{

}

//==========================================================
// 描画処理
//==========================================================
void CModel::Draw(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();	//デバイスへのポインタを取得
	CTexture *pTexture = CManager::GetTexture();	// テクスチャへのポインタ
	D3DXMATRIX mtxRot, mtxTrans;	//計算用マトリックス
	CXFile *pModelFile = CManager::GetModelFile();	// Xファイル情報のポインタ
	D3DMATERIAL9 matDef;			//現在のマテリアル保存用
	D3DXMATERIAL *pMat;				//マテリアルデータへのポインタ
	D3DXMATRIX mtxParent;			// 親のマトリックス情報

	//ワールドマトリックスの初期化
	D3DXMatrixIdentity(&m_mtxWorld);

	//向きを反映
	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_CurRot.y, m_CurRot.x, m_CurRot.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

	//位置を反映
	D3DXMatrixTranslation(&mtxTrans, m_CurPos.x, m_CurPos.y, m_CurPos.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

	if(m_pParentMtx != NULL)
	{// 覚えている場合
		mtxParent = *m_pParentMtx;

		//パーツのマトリックスと親のマトリックスをかけ合わせる
		D3DXMatrixMultiply(&m_mtxWorld,
			&m_mtxWorld, &mtxParent);
	}

	//ワールドマトリックスの設定
	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

	//現在のマテリアルを取得
	pDevice->GetMaterial(&matDef);

	// モデル情報を取得
	CXFile::FileData *pFileData = pModelFile->SetAddress(m_nIdxModel);

	if (pFileData != NULL)
	{// 使用されている場合
	 //マテリアルデータへのポインタを取得
		pMat = (D3DXMATERIAL*)pFileData->pBuffMat->GetBufferPointer();
		for (int nCntMat = 0; nCntMat < (int)pFileData->dwNumMat; nCntMat++)
		{
			int nIdxTex = pFileData->pIdexTexture[nCntMat];	// テクスチャ番号

			//マテリアルの設定
			pDevice->SetMaterial(&pMat[nCntMat].MatD3D);

			//テクスチャの設定
			pDevice->SetTexture(0, pTexture->SetAddress(nIdxTex));

			//モデル(パーツ)の描画
			pFileData->pMesh->DrawSubset(nCntMat);
		}
	}

	//保存していたマテリアルを戻す
	pDevice->SetMaterial(&matDef);
}

//==========================================================
// 生成
//==========================================================
CModel *CModel::Create(const char *pFileName)
{
	CModel *pModel = NULL;
	CXFile *pModelFile = CManager::GetModelFile();

	// オブジェクトXの生成
	pModel = new CModel;

	if (pModel != NULL)
	{// 生成できた場合

		// 初期化処理
		pModel->Init(pFileName);

	}
	else
	{// 生成に失敗した場合
		return NULL;
	}

	return pModel;
}

//==========================================================
// 半透明モデル描画
//==========================================================
void CModel::DrawSkeleton(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();	//デバイスへのポインタを取得
	CTexture *pTexture = CManager::GetTexture();	// テクスチャへのポインタ
	D3DXMATRIX mtxRot, mtxTrans;	//計算用マトリックス
	CXFile *pModelFile = CManager::GetModelFile();	// Xファイル情報のポインタ
	D3DMATERIAL9 matDef;			//現在のマテリアル保存用
	D3DXMATERIAL *pMat;				//マテリアルデータへのポインタ
	D3DXMATRIX mtxParent;			// 親のマトリックス情報
	D3DXMATERIAL SetMat;			//めり込み対策マテリアル

	//ワールドマトリックスの初期化
	D3DXMatrixIdentity(&m_mtxWorld);

	//向きを反映
	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_CurRot.y, m_CurRot.x, m_CurRot.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

	//位置を反映
	D3DXMatrixTranslation(&mtxTrans, m_CurPos.x, m_CurPos.y, m_CurPos.z);
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

	if (m_pParentMtx != NULL)
	{// 覚えている場合
		mtxParent = *m_pParentMtx;

		//パーツのマトリックスと親のマトリックスをかけ合わせる
		D3DXMatrixMultiply(&m_mtxWorld,
			&m_mtxWorld, &mtxParent);
	}

	//ワールドマトリックスの設定
	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

	//現在のマテリアルを取得
	pDevice->GetMaterial(&matDef);

	// モデル情報を取得
	CXFile::FileData *pFileData = pModelFile->SetAddress(m_nIdxModel);

	if (pFileData != NULL)
	{// 使用されている場合
		//マテリアルデータへのポインタを取得
		pMat = (D3DXMATERIAL*)pFileData->pBuffMat->GetBufferPointer();
		for (int nCntMat = 0; nCntMat < (int)pFileData->dwNumMat; nCntMat++)
		{
			int nIdxTex = pFileData->pIdexTexture[nCntMat];	// テクスチャ番号

			SetMat = pMat[nCntMat];
			SetMat.MatD3D.Diffuse.a = 0.6f;
			SetMat.MatD3D.Emissive.a = 0.6f;
			SetMat.MatD3D.Ambient.a = 0.6f;

			//マテリアルの設定
			pDevice->SetMaterial(&SetMat.MatD3D);

			//テクスチャの設定
			pDevice->SetTexture(0, pTexture->SetAddress(nIdxTex));

			//モデル(パーツ)の描画
			pFileData->pMesh->DrawSubset(nCntMat);
		}
	}
}

//==========================================================
// 親モデルを設定
//==========================================================
void CModel::SetParent(D3DXMATRIX *pMtx)
{
	m_pParentMtx = pMtx;
}

//==========================================================
// 初期位置を設定
//==========================================================
void CModel::SetPosition(const D3DXVECTOR3 pos)
{
	m_pos = pos;

	SetCurrentPosition(m_pos);
}

//==========================================================
// 初期向きを設定
//==========================================================
void CModel::SetRotation(const D3DXVECTOR3 rot)
{
	m_rot = rot;

	SetCurrentRotation(m_rot);
}

//==========================================================
// 現在の位置を設定
//==========================================================
void CModel::SetCurrentPosition(const D3DXVECTOR3 pos)
{
	m_CurPos = pos;
}

//==========================================================
// 現在の向きを設定
//==========================================================
void CModel::SetCurrentRotation(const D3DXVECTOR3 rot)
{
	m_CurRot = rot;
}

//==========================================================
// モデル番号の設定
//==========================================================
void CModel::BindModelFile(int nIdx)
{
	m_nIdxModel = nIdx;
}