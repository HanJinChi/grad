#define INPUT
#define OUTPUT
#define IOPUT
#define SIMON
#define MiAPP_SECURITY
#define SEC_MIC_LEN     8 

#define BLOCK_SIZE 8
#define BLOCK_UNIT DWORD
#define ROUNT_KEY_NUM 42

#define TX_BUFFER_SIZE_MAX 40

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;





typedef unsigned char           BYTE;                           /* 8-bit unsigned  */
typedef unsigned short int      WORD;                           /* 16-bit unsigned */
typedef unsigned int            DWORD;                          /* 32-bit unsigned */
typedef unsigned long           QWORD;   

#define ROTL32(x,r) (((x)<<(r)) | (x>>(32-(r))))
#define ROTR32(x,r) (((x)>>(r)) | ((x)<<(32-(r))))
#define ROTL64(x,r) (((x)<<(r)) | (x>>(64-(r))))
#define ROTR64(x,r) (((x)>>(r)) | ((x)<<(64-(r))))

#define f32(x) ((ROTL32(x,1) & ROTL32(x,8)) ^ ROTL32(x,2))
#define R32x2(x,y,k1,k2) (y^=f32(x), y^=k1, x^=f32(y), x^=k2)

void Simon6496KeySchedule(INPUT DWORD K[],INPUT DWORD rk[]);               /* n = 32,m = 3，block size = 2*n = 64 bits,key length = m*n = 96bits*/
void Simon6496Encrypt(IOPUT DWORD text[],INPUT DWORD rk[]);
void Simon6496Decrypt(IOPUT DWORD text[],INPUT DWORD rk[]);

void Simon6496Ctr(INPUT BYTE text[], BYTE len,BYTE key[],BYTE nounce[]);
void Simon6496CbcMac(INPUT BYTE *text, INPUT BYTE len, INPUT BYTE *key, OUTPUT BYTE *MIC);
#if defined(MiAPP_SECURITY)
    void Simon6496CcmEnc(INPUT BYTE *text,INPUT BYTE payloadLen, INPUT BYTE *key);
    BOOL Simon6496CcmDec(BYTE *text,BYTE payloadLen, BYTE *key);
#else
    void Simon6496CcmEnc(INPUT BYTE *text, INPUT BYTE headerLen, INPUT BYTE payloadLen, INPUT BYTE *key);
    BOOL Simon6496CcmDec(BYTE *text, BYTE headerLen, BYTE payloadLen, BYTE *key);
#endif