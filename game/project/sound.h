//=============================================================================
//
// サウンド処理 [sound.h]
// Author : Ibuki Okusada
//
//=============================================================================
#ifndef _SOUND_H_
#define _SOUND_H_

#include "main.h"

//=============================================================================
// サウンドクラスの定義
//=============================================================================
class CSound
{
public:	// 誰でもアクセス可能な定義

	// 種類列挙
	typedef enum
	{
		LABEL_BGM_TITLE = 0,	// BGMタイトル
		LABEL_BGM_TUTORIAL,		// BGMチュートリアル
		LABEL_BGM_GAME,			// BGMゲーム
		LABEL_BGM_RESULT,		// BGMリザルト
		LABEL_BGM_RANKING,		// BGMランキング
		LABEL_SE_CLICK,			// Enter
		LABEL_SE_MOVE,			// 移動音
		LABEL_SE_JUMP,			// ジャンプ音
		LABEL_SE_LAND,			// 着地音
		LABEL_SE_WATERGUN,		// 水鉄砲発射
		LABEL_SE_SHW,			// シャワー発射
		LABEL_SE_ZONE,			// ゾーンに入った
		LABEL_SE_ZONEGUN,		// ゾーン中水鉄砲発射
		LABEL_SE_BALLOONUP,		// 水風船膨らみ
		LABEL_SE_BALLOONSHOT,	// 水風船発射
		LABEL_SE_BALLOONLAND,	// 水風船着地
		LABEL_SE_BALLOONSPLASH,	// 水風船爆発
		LABEL_SE_HIT,			// 命中音
		LABEL_SE_SMAKE,			// 水蒸気の煙
		LABEL_SE_CARHIT,		// 車と衝突
		LABEL_SE_LOCKON,		// ロックオン
		LABEL_SE_BUS,			// バス
		LABEL_SE_TRACK,			// トラック
		LABEL_SE_CAR,			// 車
		LABEL_SE_CLOCK,			// 車
		LABEL_MAX,
	} LABEL;

private: // 自分だけがアクセス可能

	 // サウンド情報の構造体定義
	typedef struct
	{
		char *pFilename;	// ファイル名
		int nCntLoop;		// ループカウント
	} SOUNDINFO;

public:	// 誰でもアクセス可能

	CSound();	// コンストラクタ
	~CSound();	// デストラクタ

	// メンバ関数
	HRESULT Init(HWND hWnd);
	void Uninit(void);
	HRESULT Play(LABEL label);
	void Stop(LABEL label);
	void Stop(void);

private:	// 自分だけがアクセス可能

	// メンバ関数
	HRESULT CheckChunk(HANDLE hFile, DWORD format, DWORD *pChunkSize, DWORD *pChunkDataPosition);
	HRESULT ReadChunkData(HANDLE hFile, void *pBuffer, DWORD dwBuffersize, DWORD dwBufferoffset);

	// メンバ変数
	static const SOUNDINFO m_aSoundInfo[LABEL_MAX];	// サウンドファイル名
	IXAudio2 *m_pXAudio2;							// XAudio2オブジェクトへのインターフェイス
	IXAudio2MasteringVoice *m_pMasteringVoice;		// マスターボイス
	IXAudio2SourceVoice *m_apSourceVoice[LABEL_MAX];	// ソースボイス
	BYTE *m_apDataAudio[LABEL_MAX];					// オーディオデータ
	DWORD m_aSizeAudio[LABEL_MAX];					// オーディオデータサイズ
};

#endif
