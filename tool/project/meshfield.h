//==========================================================
//
// ���b�V���t�B�[���h�̏��� [meshfield.h]
// Author : Ibuki Okusada
//
//==========================================================
#ifndef _MESHFIELD_H_	// ���̃}�N������`����Ă��Ȃ��ꍇ
#define _MESHFIELD_H_	// ��d�C���N���[�h�h�~�p�}�N�����`

#include "main.h"
#include "mesh.h"

//**********************************************************
// ���b�V���t�B�[���h�N���X�̒�`(�h���N���X)
//**********************************************************
class CMeshField : public CObjectMesh
{
public:		// �N�ł��A�N�Z�X�\

	CMeshField();	// �R���X�g���N�^
	~CMeshField();	// �f�X�g���N�^

	// �����o�֐�
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	void SetVtxInfo(void);
	static CMeshField *Create(const D3DXVECTOR3 pos, const D3DXVECTOR3 rot, float fWidth, float fHeight,
		const char *pFileName, const int nWidth = 1, const int nHeight = 1, const int nPriority = 3);

	// �����o�֐�(�擾)
	float GetWidth(void) { return m_fWidth; }
	float GetHeight(void) { return m_fHeight; }

	// �����o�֐�(�ݒ�)
	void SetSize(float fWidth, float fHeight);

private:	// �����������A�N�Z�X�\

	// �����o�֐�
	float m_fWidth;		// ��
	float m_fHeight;	// ����
};

#endif