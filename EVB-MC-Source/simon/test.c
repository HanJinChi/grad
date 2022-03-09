#include<stdio.h>
#include "simon.h"

BYTE TxBuffer[TX_BUFFER_SIZE_MAX];
int TxData = 0;

int main(){
    TxBuffer[TxData++] = 0;
    TxBuffer[TxData++] = 3;
    for(int i = 1;i <= 14;i++){
        TxBuffer[TxData++] = (BYTE)i;
    }
    BYTE key[] = {0x0,0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0xa,0xb};
    Simon6496CcmEnc(TxBuffer,TxData,key);
    TxData += BLOCK_SIZE;
    for(int i = 0;i<TxData;i++){
        printf("%d ",(int)TxBuffer[i]);
    }
    printf("\n");
    int i = Simon6496CcmDec(TxBuffer,TxData,key);
    printf("%d\n",i);

    return 0;
}