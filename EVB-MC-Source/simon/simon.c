#include "simon.h"

/* Words--->Bytes */
/* Bytes--->Words*/
void Words32ToBytes(long words[],BYTE bytes[],int numwords){
    int i,j=0;
    for(i=0;i<numwords;i++){
        bytes[j]=(BYTE)words[i];
        bytes[j+1]=(BYTE)(words[i]>>8);
        bytes[j+2]=(BYTE)(words[i]>>16);
        bytes[j+3]=(BYTE)(words[i]>>24);
        j+=4;
    }
}

void Words64ToBytes(QWORD words[],BYTE bytes[],int numwords){
    int i,j=0;
    for(i=0;i<numwords;i++){
        bytes[j]=(BYTE)words[i];
        bytes[j+1]=(BYTE)(words[i]>>8);
        bytes[j+2]=(BYTE)(words[i]>>16);
        bytes[j+3]=(BYTE)(words[i]>>24);
        bytes[j+4]=(BYTE)(words[i]>>32);
        bytes[j+5]=(BYTE)(words[i]>>40);
        bytes[j+6]=(BYTE)(words[i]>>48);
        bytes[j+7]=(BYTE)(words[i]>>56);
        j+=8;
    }
}

void BytesToWords32(BYTE bytes[],long words[],int numbytes){
    int i,j=0;
    for(i=0;i<numbytes/4;i++){
        words[i]=(long)bytes[j]  | ((long)bytes[j+1]<<8)  | ((long)bytes[j+2]<<16) |((long)bytes[j+3]<<24); 
        j+=4;
    }
}
void BytesToWords64(BYTE bytes[],QWORD words[],int numbytes){
    int i,j=0;
    for(i=0;i<numbytes/8;i++){
        words[i]=(QWORD)bytes[j]  | ((QWORD)bytes[j+1]<<8)  | ((QWORD)bytes[j+2]<<16) |((QWORD)bytes[j+3]<<24) | ((QWORD)bytes[j+4]<<32) | ((QWORD)bytes[j+5]<<40) |((QWORD)bytes[j+6]<<48) | ((QWORD)bytes[j+7]<<56); 
        j+=8;
    }
}

/*Simon 64/96 key generate*/
void Simon6496KeySchedule(DWORD K[],DWORD rk[]){
    DWORD i,c=0xfffffffc;
    QWORD z=0x7369f885192c0ef5LL;
    rk[0]=K[0]; 
    rk[1]=K[1]; 
    rk[2]=K[2];
    for(i=3;i<42;i++){
        rk[i]=c^(z&1)^rk[i-3]^ROTR32(rk[i-1],3)^ROTR32(rk[i-1],4);
        z>>=1;
    }
}