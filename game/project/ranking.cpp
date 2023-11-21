//===============================================
//
// �����L���O��ʂ̊Ǘ����� [ranking.cpp]
// Author : Ibuki Okusada
//
//===============================================
#include "ranking.h"
#include "object2D.h"
#include "texture.h"
#include "manager.h"
#include "main.h"
#include "input.h"
#include "fade.h"
#include "score.h"
#include "meshcylinder.h"
#include "meshdome.h"
#include "fileload.h"
#include "light.h"
#include "sound.h"
#include "camera.h"
#include "car_manager.h"

//===============================================
// �}�N����`
//===============================================
#define RANKING_FILE	"data\\FILE\\ranking.bin"	// �����L���O�t�@�C��
#define AUTOMOVE_TITLE	(600)						// �^�C�g�������J�ڃ^�C�}�[

//===============================================
// �ÓI�����o�ϐ�
//===============================================
CScore *CRanking::m_apScore[NUM_RANK] = {};	// �����L���O�̃|�C���^
int CRanking::m_nScore = 0;					// �X�R�A

//===============================================
// �R���X�g���N�^
//===============================================
CRanking::CRanking()
{
	// �l���N���A����
	m_nTimer = 0;
	m_nRank = 0;
}

//===============================================
// �f�X�g���N�^
//===============================================
CRanking::~CRanking()
{

}

//===============================================
// ����������
//===============================================
HRESULT CRanking::Init(void)
{
	int aScore[NUM_RANK] = {};	// �X�R�A�i�[�p
	m_nRank = -1;	//�����N�C�����ĂȂ����

	// �f�[�^�̓ǂݍ���
	Load(&aScore[0]);

	// �f�[�^�̃\�[�g
	Sort(&aScore[0]);

	// �����N�C���m�F
	RankIn(&aScore[0], m_nScore);

	// �I�u�W�F�N�g����
	CMeshDome *pMesh = CMeshDome::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 20000.0f, 10.0f, 3, 10, 10);
	CMeshCylinder::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 17000.0f, 100.0f, 3, 10, 10);

	// �O���t�@�C���ǂݍ��݂̐���
	if (m_pFileLoad == NULL)
	{// �g�p���Ă��Ȃ��ꍇ
		m_pFileLoad = new CFileLoad;

		if (m_pFileLoad != NULL)
		{
			m_pFileLoad->Init();
			m_pFileLoad->OpenFile("data\\TXT\\model.txt");
		}
	}

	// ���S�̐���
	CObject2D *p = CObject2D::Create(7);
	p->BindTexture(CManager::GetTexture()->Regist("data\\TEXTURE\\ranking_logo.png"));
	p->SetPosition(D3DXVECTOR3(SCREEN_WIDTH * 0.5f, SCREEN_HEIGHT * 0.125f, 0.0f));
	p->SetSize(SCREEN_WIDTH * 0.25f, SCREEN_HEIGHT * 0.11f);

	// ���ʕ��X�R�A�̐���
	for (int nCntRank = 0; nCntRank < NUM_RANK; nCntRank++)
	{
		if (m_apScore[nCntRank] == NULL)
		{
			p = CObject2D::Create(7);
			p->BindTexture(CManager::GetTexture()->Regist("data\\TEXTURE\\ranking001.png"));
			p->SetPosition(D3DXVECTOR3(395.0f, 250.0f + nCntRank * 100.0f, 0.0f));
			p->SetSize(40, 50);
			p->SetVtx(nCntRank + 1, 10, 1);

			m_apScore[nCntRank] = CScore::Create(D3DXVECTOR3(495.0f, 250.0f + nCntRank * 100.0f, 0.0f), 8);
			m_apScore[nCntRank]->Set(aScore[nCntRank]);

			if (m_nRank == nCntRank)
			{
				m_apScore[nCntRank]->SetColor(D3DXCOLOR(1.0f, 0.5f, 0.5f, 1.0f));
			}
		}
	}

	if (CManager::GetCamera() != NULL)
	{
		CManager::GetCamera()->SetRotation(D3DXVECTOR3(0.0f, 0.0f, D3DX_PI * 0.475f));
		CManager::GetCamera()->SetPositionR(D3DXVECTOR3(0.0f, 50.0f, 0.0f));
		CManager::GetCamera()->SetLength(500.0f);
	}

	// �J�[�}�l�[�W���[�𐶐�
	if (m_pCarManager == NULL)
	{
		m_pCarManager = new CCarManager;
		m_pCarManager->Init();
		m_pCarManager->SetRanking();
	}

	CManager::GetLight()->SetLight(0.9f);
	pMesh->SetColor(0.9f);

	CManager::GetSound()->Play(CSound::LABEL_BGM_RANKING);

	return S_OK;
}

//===============================================
// �I������
//===============================================
void CRanking::Uninit(void)
{
	for (int nCntRank = 0; nCntRank < NUM_RANK; nCntRank++)
	{
		if (m_apScore[nCntRank] != NULL)
		{
			m_apScore[nCntRank]->Uninit();
			delete m_apScore[nCntRank];	// �������̊J��
			m_apScore[nCntRank] = NULL;	// �g�p���Ă��Ȃ���Ԃɂ���
		}
	}

	// �J�[�}�l�[�W���[
	if (m_pCarManager != NULL)
	{
		m_pCarManager->Uninit();
		delete m_pCarManager;
		m_pCarManager = NULL;
	}

	if (m_pFileLoad != NULL)
	{
		m_pFileLoad->Uninit();

		delete m_pFileLoad;		// �������̊J��
		m_pFileLoad = NULL;
	}

	m_nScore = 0;
}

//===============================================
// �X�V����
//===============================================
void CRanking::Update(void)
{
	CInputPad *pInputPad = CManager::GetInputPad();

	if (CManager::GetInputKeyboard()->GetTrigger(DIK_RETURN) || pInputPad->GetTrigger(CInputPad::BUTTON_A, 0))
	{
		CManager::GetFade()->Set(CScene::MODE_TITLE);
	}

	if (CManager::GetFade()->GetState() == CFade::STATE_NONE)
	{
		m_nTimer++;

		if (m_nTimer >= AUTOMOVE_TITLE)
		{// �^�C�g�������J�ڋK��l
			CManager::GetFade()->Set(CScene::MODE_TITLE);
		}
	}

	if (m_pCarManager != NULL)
	{
		m_pCarManager->Update();
	}

	CScene::Update();
}

//===============================================
// �`�揈��
//===============================================
void CRanking::Draw(void)
{
	CScene::Draw();
}

//===============================================
// �����L���O�f�[�^�ۑ�
//===============================================
void CRanking::Save(int *pScore)
{
	FILE *pFile;

	pFile = fopen(RANKING_FILE, "wb");

	if (pFile != NULL)
	{//�t�@�C�����J�����ꍇ

		//�f�[�^��ǂݍ���
		fwrite(pScore, sizeof(int), NUM_RANK, pFile);

		//�t�@�C�������
		fclose(pFile);
	}
}

//===============================================
// �����L���O�f�[�^�ǂݍ���
//===============================================
void CRanking::Load(int *pScore)
{
	FILE *pFile;

	pFile = fopen(RANKING_FILE, "rb");

	if (pFile != NULL)
	{//�t�@�C�����J�����ꍇ

		//�f�[�^��ǂݍ���
		fread(pScore, sizeof(int), NUM_RANK, pFile);

		//�t�@�C�������
		fclose(pFile);
	}
	else
	{//�t�@�C�����J���Ȃ������ꍇ
		//�v�f�����Ă���
		for (int nCntRanking = 0; nCntRanking < NUM_RANK; nCntRanking++)
		{
			pScore[nCntRanking] = 40000 - (nCntRanking * 5000);
		}
	}
}

//===============================================
// �����L���O�f�[�^�\�[�g
//===============================================
void CRanking::Sort(int *pScore)
{
	// �~���\�[�g
	for (int nCntFst = 0; nCntFst < NUM_RANK - 1; nCntFst++)
	{
		int nTempNum = nCntFst;	// ���̈�ԑ傫���ԍ�

		for (int nCntSec = nCntFst + 1; nCntSec < NUM_RANK; nCntSec++)
		{
			if (pScore[nCntSec] > pScore[nTempNum])
			{// �l���傫���ꍇ
				nTempNum = nCntSec;	// �傫���ԍ���ύX
			}
		}

		if (nTempNum != nCntFst)
		{// �ύX����ꍇ
			int nTemp = pScore[nCntFst];
			pScore[nCntFst] = pScore[nTempNum];
			pScore[nTempNum] = nTemp;
		}
	}
}

//===============================================
// �����L���O�C���m�F
//===============================================
void CRanking::RankIn(int *pScore, int nResult)
{
	if (nResult > pScore[NUM_RANK - 1])
	{
		pScore[NUM_RANK - 1] = nResult;

		// �\�[�g����
		Sort(pScore);

		// �ۑ�����
		Save(pScore);

		//�����N�C���������ʂ��m�F����
		for (int nCntRank = 0; nCntRank < NUM_RANK; nCntRank++)
		{
			if (pScore[nCntRank] == nResult)
			{
				m_nRank = nCntRank;	// �����N�C���������ʂ�ۑ�			
				break;
			}
		}
	}
}