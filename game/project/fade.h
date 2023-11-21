//===============================================
//
// �t�F�[�h�̏����S�� [fade.h]
// Author : Ibuki Okusada
//
//===============================================
#ifndef _FADE_H_
#define _FADE_H_

#include "main.h"	//main.h�Œ�`���Ă�����̂��K�v�Ȃ���include
#include "manager.h"
#include "object2D.h"

//===============================================
// �t�F�[�h�N���X�̒�`(�h���N���X)
//===============================================
class CFade : public CObject2D
{
public:	// �N�ł��A�N�Z�X�\�Ȓ�`

	// ��ԗ񋓌^
	typedef enum
	{
		STATE_NONE = 0,	//�������Ă��Ȃ����
		STATE_IN,		//�t�F�[�h�C�����
		STATE_OUT,		//�t�F�[�h�A�E�g���
		STATE_MAX
	}STATE;

public:	// �N�ł��A�N�Z�X�\

	CFade(const int nPriOrity = NUM_PRIORITY - 1);	// �R���X�g���N�^
	~CFade();	// �f�X�g���N�^

	// �����o�֐�
	HRESULT Init(CScene::MODE modeNext);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	void Set(CScene::MODE modeNext);
	void SetState(STATE state);
	STATE GetState(void) { return m_state; }
	static CFade *Create(CScene::MODE modeNext);

private:	// �����������A�N�Z�X�\�Ȓ�`

	// �����o�ϐ�
	STATE m_state;				// ���
	CScene::MODE m_modeNext;	// ���̉��(���[�h)
	D3DXCOLOR m_Col;			// �t�F�[�h�J���[
};

#endif