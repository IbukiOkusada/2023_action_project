//==========================================================
//
//�t�@�C���A�f�[�^�ǂݍ��ݏ���
//Author ����ɐ�
//
//==========================================================
#ifndef _FILELOAD_H_
#define _FILELOAD_H_

#include "main.h"			//main.h�Œ�`���Ă�����̂��K�v�Ȃ���include

//**********************************************************
// �O���t�@�C���ǂݍ��݃N���X�̒�`
//**********************************************************
class CFileLoad
{
private:	// �����������A�N�Z�X�\�Ȓ�`

	// �t�@�C�����
	typedef struct
	{
		int nIdx;	// �ǂݍ��ݔԍ�
		char aFileName[256];	// �t�@�C����
	}File;

public:		// �N�ł��A�N�Z�X�\

	CFileLoad();	// �R���X�g���N�^
	~CFileLoad();	// �f�X�g���N�^

	// �����o�֐�
	void Init(void);
	void Uninit(void);
	void OpenFile(const char *pFileName);

	// �����o�֐�(�擾)
	char *GetTextureFileName(int nCntTexture);
	char *GetModelFileName(int nCntModel);
	int GetTexNumAll(void) { return m_nTexNumAll; }
	int GetModelNumAll(void) { return m_nModelNumAll; }

private:	// �����������A�N�Z�X�\

	// �����o�֐�
	void LoadTexNum(FILE *pFile);
	void LoadModelNum(FILE *pFile);
	void LoadTexFile(FILE *pFile);
	void LoadModelFile(FILE *pFile);
	void LoadFileData(FILE *pFile);
	void LoadMeshWallData(FILE *pFile);
	void LoadMeshFieldData(FILE *pFile);
	void LoadModelData(FILE *pFile);
	void LoadDomeData(FILE *pFile);
	void LoadCylinderData(FILE *pFile);

	// �����o�ϐ�
	File *m_pModelFile;	// ���f���t�@�C�����
	File *m_pTextureFile;	// �e�N�X�`���t�@�C�����
	int m_nTexNumAll;	// �e�N�X�`������
	int m_nModelNumAll;	// ���f������
};

#endif