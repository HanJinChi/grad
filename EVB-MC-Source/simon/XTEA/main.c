#include<stdio.h>
#include"xtea.h"

BYTE TxData = 0;
int main(){
    BYTE key[] = {0x0,0x1,0x2,0x3,0x4,0x5,0x6,0x7};
    BYTE TxBuffer[TX_BUFFER_SIZE_MAX];
    for(int i = 0 ;i < 8;i++){
        TxBuffer[TxData++] = i;
    }
    XteaCcmEnc(TxBuffer,TxData,(DWORD*)key);
    TxData += BLOCK_SIZE;
    int i = XteaCcmDec(TxBuffer,TxData,(DWORD*)key);
    printf("%d",i);
    return 0;

}