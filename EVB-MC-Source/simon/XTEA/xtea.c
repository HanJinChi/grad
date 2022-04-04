#include<stdio.h>
#include"xtea.h"



void XteaEnc(IOPUT WORD* text,INPUT DWORD* key){
        WORD part1=text[0], part2=text[1];
        WORD sum=0, delta=0x9E37;
        BYTE i;
            
        for(i = 0; i < XTEA_ROUND; i++) {
            part1 += (((part2 << 4) ^ (part2 >> 5)) + part2) ^ (sum + key[sum & 3]);
            sum += delta;
            part2 += (((part1 << 4) ^ (part1 >> 5)) + part1) ^ (sum + key[(sum>>11) & 3]);
        }
        text[0]=part1; text[1]=part2;
    }
void XteaCtr(INPUT BYTE text[], BYTE len,DWORD key[],BYTE nounce[]){
        BYTE block = len/BLOCK_SIZE + 1;
        BYTE i,j;
        for(i = 0;i < block;i++){
            for(j = 0;j < BLOCK_SIZE-1;j++){
                tmpBlock[j] = nounce[j];
            }
            tmpBlock[BLOCK_SIZE-1] = i;
            XteaEnc((BLOCK_UNIT*)tmpBlock, key); 
        
            for(j = 0; j < BLOCK_SIZE; j++){
                if(( i * BLOCK_SIZE + j) >= len){
                    break;
                }
                text[ i * BLOCK_SIZE + j ] ^= tmpBlock[j];
            }
        }
        return;
    }
void XteaCbcMac(INPUT BYTE *text, INPUT BYTE len, INPUT DWORD *key, OUTPUT BYTE *MIC){
        BYTE block = len / BLOCK_SIZE + 1;
        BYTE i, j;
        for(i = 0; i < BLOCK_SIZE; i++){
            MIC[i] = 0;
        }    
        for(i = 0; i < block; i++){
            for(j = 0; j < BLOCK_SIZE; j++){
                if( (i * BLOCK_SIZE + j) >= len ){
                    break;
                }
                MIC[j] ^= text[i * BLOCK_SIZE + j];    
            }
            XteaEnc((BLOCK_UNIT*)MIC, key);
        }  
    }
void XteaCcmEnc(BYTE *text, BYTE payloadLen, DWORD *key){
            BYTE i;
            XteaCbcMac(text, payloadLen, key, tmpBlock);   
            for(i = 0; i < BLOCK_SIZE; i++){
                text[payloadLen + i] = tmpBlock[i];
            }
            //  padding,the tmpBlock will be used  the CTR nounce 
            for(i = 0; i < BLOCK_SIZE-1; i++){
                tmpBlock[i] = i;
            } 
            XteaCtr(text, (payloadLen + BLOCK_SIZE), key, tmpBlock);    
        }
BOOL XteaCcmDec(BYTE *text,BYTE payloadLen, DWORD *key){
    BYTE i;
    for(i = 0; i < BLOCK_SIZE-1; i++){
        tmpBlock[i] = i ;
    }
            XteaCtr(text, payloadLen, key, tmpBlock);

            XteaCbcMac(text, (payloadLen - SEC_MIC_LEN), key, tmpBlock);
            for(i = 0; i < SEC_MIC_LEN; i++){
                if( tmpBlock[i] != text[payloadLen - SEC_MIC_LEN + i] ){
                    return FALSE;
                }       
            } 
    return TRUE;
}





