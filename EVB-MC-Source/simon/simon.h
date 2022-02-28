typedef unsigned char           BYTE;                           /* 8-bit unsigned  */
typedef unsigned short int      WORD;                           /* 16-bit unsigned */
typedef unsigned long           DWORD;                          /* 32-bit unsigned */
typedef unsigned long long      QWORD;   

#define ROTL32(x,r) (((x)<<(r)) | (x>>(32-(r))))
#define ROTR32(x,r) (((x)>>(r)) | ((x)<<(32-(r))))
#define ROTL64(x,r) (((x)<<(r)) | (x>>(64-(r))))
#define ROTR64(x,r) (((x)>>(r)) | ((x)<<(64-(r))))


void Words32ToBytes(long words[],BYTE bytes[],int numwords);
void Words64ToBytes(QWORD words[],BYTE bytes[],int numwords);
void BytesToWords32(BYTE bytes[],long words[],int numbytes);
void BytesToWords64(BYTE bytes[],QWORD words[],int numbytes);

void Simon6496KeySchedule(DWORD K[],DWORD rk[]);               /* n = 32,m = 3 */