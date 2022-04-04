#define INPUT
#define OUTPUT
#define IOPUT
#define BLOCK_SIZE 4
#define BLOCK_UNIT WORD
#define XTEA_ROUND  32
#define SEC_MIC_LEN   4 
#define TX_BUFFER_SIZE_MAX 40
typedef unsigned char           BYTE;                           /* 8-bit unsigned  */
typedef unsigned short int      WORD;                           /* 16-bit unsigned */
typedef unsigned long           DWORD;                          /* 32-bit unsigned */
typedef enum _BOOL { FALSE = 0, TRUE } BOOL;

void XteaEnc(IOPUT WORD* text,INPUT DWORD* key);
void XteaCtr(INPUT BYTE text[], BYTE len,DWORD key[],BYTE nounce[]);
void XteaCbcMac(INPUT BYTE *text, INPUT BYTE len, INPUT DWORD *key, OUTPUT BYTE *MIC);
void XteaCcmEnc(BYTE *text,BYTE payloadLen, DWORD *key);
BOOL XteaCcmDec(BYTE *text,BYTE payloadLen, DWORD *key);
BYTE tmpBlock[BLOCK_SIZE];



