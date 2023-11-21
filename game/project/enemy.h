//==========================================================
//
// �G�̏��� [enemy.h]
// Author : Ibuki Okusada
//
//==========================================================
#ifndef _ENEMY_H_		// ���̃}�N������`����Ă��Ȃ��ꍇ
#define _ENEMY_H_		// ��d�C���N���[�h�h�~�p�}�N�����`

#include "main.h"
#include "object.h"
#include "enemy_route.h"

// �}�N����`
#define SHOP_ROUTE	(27)
#define PARK_ROUTE	(14)
#define NUM_ROUTE	(SHOP_ROUTE + PARK_ROUTE)

// �O���錾
class CCharacter;
class CShadow;
class CObjectBillboard;
class CThermo;

//==========================================================
// �G�̃N���X��`(�h���N���X)
//==========================================================
class CEnemy : public CObject
{
public:	// �N�ł��A�N�Z�X�\�Ȓ�`

	// ��ԗ񋓌^
	enum STATE
	{
		STATE_NORMAL = 0,	// �ʏ�
		STATE_HOT,			// ����
		STATE_HEAT,			// �M����
		STATE_DOWN,			// �_�E��
		STATE_COOL,			// ������
		STATE_COOLDOWN,		// �������Ȃ�������
		STATE_DEFCOOL,		// �ŏ����������
		STATE_MAX
	};

private:	// �����������A�N�Z�X�\�Ȓ�`

	// ���\����
	typedef struct
	{
		D3DXVECTOR3 pos;		// �ʒu
		D3DXVECTOR3 rot;		// ����
		D3DXVECTOR3 move;		// �ړ���
		D3DXVECTOR3 posOld;		// �ݒ�ʒu
		D3DXMATRIX mtxWorld;	// ���[���h�}�g���b�N�X
	}INFO;

	// �C���^�[�o��
	struct Interval
	{
		float fDamage;	// �_���[�W
		float fParticle;// �p�[�e�B�N��
		float fHot;		// �̉��㏸
	};

public:	// �N�ł��A�N�Z�X�\

	CEnemy(int nPriOrity = 1);
	~CEnemy();	// �f�X�g���N�^

	// �����o�֐�
	HRESULT Init(void);
	HRESULT Init(const char *pName);	// �I�[�o�[���[�h
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static CEnemy *Create(const D3DXVECTOR3 pos, const D3DXVECTOR3 rot, const D3DXVECTOR3 move,
		const char *pBodyName, const int nPriority = 4);
	static CEnemy *Create(const char *pBodyName, const int nPriority = 4);
	void Hit(float fDamage);
	void SetState(void);
	STATE GetState(void) { return m_state; }

	// �����o�֐�(�ݒ�)
	void SetMove(const D3DXVECTOR3 move) { m_Info.move = move; }
	void SetPosition(const D3DXVECTOR3 pos) { m_Info.pos = pos; }
	void SetRotation(const D3DXVECTOR3 rot) { m_Info.rot = rot; }

	// �����o�֐�(�擾)
	D3DXVECTOR3 GetMove(void) { return m_Info.move; }
	D3DXVECTOR3 GetPosition(void) { return m_Info.pos; }
	D3DXVECTOR3 GetRotation(void) { return m_Info.rot; }
	D3DXMATRIX *GetMtx(void) { return &m_Info.mtxWorld; }
	CEnemy *GetEnemy(void) { return this; }
	CCharacter *GetBody(void) { return m_pBody; }
	void SetRoute(int nIdx);

private:	// �����������A�N�Z�X�\

	// �����o�֐�
	void Controller(void);
	void SetParticle(void);
	void SetCol(void);
	void UpdateNormal(void);
	void UpdateCool(void);
	void UpdateCoolDown(void);
	void UpdateDown(void);
	void UpdateHeat(void);
	void SetBodyTemp(void);
	void SetThermo(void);
	void SetMove(void);

	// �����o�ϐ�
	static const char *m_apFileName[NUM_ROUTE];
	static const int m_aParticleCounter[STATE_MAX];
	CCharacter *m_pBody;	// �㔼�g
	float m_fStateCnt;		// ��ԊǗ��J�E���g
	INFO m_Info;			// �������g�̏��
	bool m_bRescue;			// �ړ��������ǂ���
	float m_fStateMoveMul;	// ��ԉ��������ړ��ʔ{��
	float m_fRotMove;		// ���݂̊p�x
	float m_fRotDiff;		// �ړI�̊p�x
	float m_fRotDest;		// �p�x�v�Z
	CShadow *m_pShadow;		// �e
	float m_fLife;			// �̗�
	Interval m_Interval;	// �C���^�[�o��
	STATE m_state;			// ��ԊǗ�
	CObject *m_pLockOn;		// ���b�N�I��
	CThermo *m_pThermo;		// ���x�\��
	CEnemyRoute::Route *m_pRoute;	// ���H�̃|�C���^
	int m_nTargetPoint;		// �ڕW�̒n�_
};

#endif