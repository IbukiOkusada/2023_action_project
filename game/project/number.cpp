//===============================================
//
// �����S�ʂ̏��� [number.cpp]
// Author : Ibuki Okusada
//
//===============================================
#include "number.h"
#include "object2D.h"

// �}�N����`
#define MAX_WIDTHPATTERN	(10)	// �p�^�[����

//===============================================
// �R���X�g���N�^
//===============================================
CNumber::CNumber()
{
	// �l���N���A����
	m_nIdx = 0;
	m_pObject2D = NULL;
}

//===============================================
// �f�X�g���N�^
//===============================================
CNumber::~CNumber()
{

}

//===============================================
// ����������
//===============================================
HRESULT CNumber::Init(D3DXVECTOR3 pos, float fWidth, float fHeight)
{
	if (m_pObject2D == NULL)
	{// �g�p����Ă��Ȃ��ꍇ
		m_pObject2D = CObject2D::Create(pos, D3DXVECTOR3(0.0f, 0.0f, 0.0f), 7);

		if (m_pObject2D != NULL)
		{// �g�p����Ă���ꍇ

			// ������
			m_pObject2D->Init();

			// �T�C�Y�ݒ�
			m_pObject2D->SetSize(fWidth, fHeight);

			// �e�N�X�`���ݒ�
			SetIdx(m_nIdx);
		}

	}
	return S_OK;
}

//===============================================
// ����������
//===============================================
HRESULT CNumber::Init()
{
	if (m_pObject2D == NULL)
	{// �g�p����Ă��Ȃ��ꍇ
		m_pObject2D = CObject2D::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), 7);

		if (m_pObject2D != NULL)
		{// �g�p����Ă���ꍇ

			// ������
			m_pObject2D->Init();

			// �e�N�X�`���ݒ�
			SetIdx(m_nIdx);
		}

	}
	return S_OK;
}

//===============================================
// �I������
//===============================================
void CNumber::Uninit(void)
{
	if (m_pObject2D != NULL)
	{// �g�p����Ă���ꍇ
		m_pObject2D = NULL;
	}
}

//===============================================
// �X�V����
//===============================================
void CNumber::Update(void)
{
	if (m_pObject2D != NULL)
	{// �g�p����Ă���ꍇ
		m_pObject2D->Update();
	}
}

//===============================================
// �`�揈��
//===============================================
void CNumber::Draw(void)
{
	if (m_pObject2D != NULL)
	{// �g�p����Ă���ꍇ
		// �`�揈��
		m_pObject2D->Draw();
	}
}

//===============================================
// ����
//===============================================
CNumber *CNumber::Create(void)
{
	CNumber *pNum = NULL;

	if (pNum != NULL)
	{// �g�p����Ă��Ȃ��ꍇ
		pNum = new CNumber;

		if (pNum != NULL)
		{// �g�p����Ă���ꍇ

			// ����������
			pNum->Init();
		}
	}

	return pNum;
}

//===============================================
// ����
//===============================================
CNumber *CNumber::Create(D3DXVECTOR3 pos, float fWidth, float fHeight)
{
	CNumber *pNum = NULL;

	if (pNum == NULL)
	{// �g�p����Ă��Ȃ��ꍇ
		pNum = new CNumber;

		if(pNum != NULL)
		{// �g�p����Ă���ꍇ

			// ����������
			pNum->Init(pos, fWidth, fHeight);
		}
	}

	return pNum;
}

//===============================================
// ���_�ݒ�
//===============================================
void CNumber::SetIdx(const int nIdx)
{
	m_nIdx = nIdx;	// �l��ݒ�

	if (m_nIdx > 10)
	{// �l�����E�𒴂����ꍇ
		m_nIdx = 9;
	}
	else if (m_nIdx < 0)
	{// �l���Œ�l�𒴂����ꍇ
		m_nIdx = 0;
	}

	if (m_pObject2D != NULL)
	{// �g�p����Ă���ꍇ
		// ���_���̐ݒ�
		m_pObject2D->SetVtx(m_nIdx, MAX_WIDTHPATTERN, 1);
	}
}