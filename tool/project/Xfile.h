//==========================================================
//
// Xファイル管理 [modelfile.h]
// Author : Ibuki Okusada
//
//==========================================================
#ifndef _MODELFILE_H_		// このマクロが定義されていない場合
#define _MODELFILE_H_		// 二重インクルード防止用マクロを定義

#include "main.h"

//==========================================================
// Xファイル情報のクラス定義
//==========================================================
class CXFile
{
private:	// 自分だけがアクセス可能な定数定義

	const static int MAX_FILE = 64;		// モデルファイルの最大数
	const static int MAX_NAME = 256;	// ファイル名文字数

public:	// 誰でもアクセス可能な定義

	// Xファイル情報
	typedef struct
	{
		LPD3DXMESH pMesh;		//メッシュ(頂点情報)へのポインタ
		LPD3DXBUFFER pBuffMat;	//マテリアルへのポインタ
		int *pIdexTexture;	// テクスチャ番号
		DWORD dwNumMat;		//マテリアルの数
		D3DXVECTOR3 vtxMin;	// 最小
		D3DXVECTOR3 vtxMax;	// 最大
	}FileData;

private:	// 自分だけがアクセス可能な定義

	// ファイル読み込み情報
	typedef struct
	{
		FileData filedata;			// ファイル情報
		char aFileName[MAX_NAME];	// ファイル名
	}FileInfo;

public:	// 誰でもアクセス可能

	CXFile();	// コンストラクタ
	~CXFile();	// デストラクタ

	// メンバ関数
	 int Regist(const char *pFileName);
	 void Unload(void);

	 // メンバ関数(取得)
	 FileData *SetAddress(int nIdx);
	 static int GetNumAll(void) { return m_nNumAll; }
	 D3DXVECTOR3 GetMax(int nIdx) { return m_apModelFileData[nIdx]->filedata.vtxMax; }
	 D3DXVECTOR3 GetMin(int nIdx) { return m_apModelFileData[nIdx]->filedata.vtxMin; }

private:	// 自分だけがアクセス可能

	// メンバ関数
	 HRESULT FileLoad(int nIdx);

	// メンバ変数
	FileInfo *m_apModelFileData[MAX_FILE];	// モデルのファイル情報のポインタ
	static int m_nNumAll;	// 読み込み総数
};

#endif

