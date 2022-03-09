#include "simon.h"
#include <stdio.h>
#if defined(SIMON) 
    BYTE tmpBlock[BLOCK_SIZE];
    /*********************************************************************
     * void Simon6496Keyschedule(  INPUT DWORD K[], 
     *                  OUPUT DWORD rk[],        
     *                  )
     *
     * Overview:     This function implements generating the  round keys, which the parameters are words size(n) = 32 , m = 3
     *
     *
     * PreCondition:    None
     *
     * Input:       
     *          DWORD []      K      The keys words which can generate round keys
     *         
     *          DWORD []     rk      Round keys
     * 
     * Output:          
     *          None
     *
     * Side Effects:    None
     * 
     ********************************************************************/

    void Simon6496KeySchedule(INPUT DWORD K[],OUTPUT DWORD rk[]){
        DWORD i,c = 0xfffffffc;
        QWORD z = 0x7369f885192c0ef5LL;
        rk[0] = K[0]; 
        rk[1] = K[1]; 
        rk[2] = K[2];
        for(i = 3;i < ROUNT_KEY_NUM;i++){
            rk[i] = c^(z&1)^rk[i-3]^ROTR32(rk[i-1],3)^ROTR32(rk[i-1],4);
            z >>= 1;
        }
    }


    /*********************************************************************
     * void Simon6496Encrypt(  IOPUT DWORD text[], 
     *                  INPUT DWORD rk[],        
     *                  )
     *
     * Overview:     This function implements the process of SIMON 64/96 Encrypt
     *
     *
     * PreCondition:    None
     *
     * Input:       
     *          DWORD []      text       The input buffer to the SIMON engine. The 
     *                                  encoded data will replace the original 
     *                                  content after the function call
     *         
     *          DWORD []     rk      Round keys
     * 
     * Output:          
     *          None
     *
     * Side Effects:    None
     * 
     ********************************************************************/ 
    
    void Simon6496Encrypt(IOPUT DWORD text[],INPUT DWORD rk[]){
        BYTE i;
        for(i = 0;i < 42;){
            R32x2(text[1],text[0],rk[i++],rk[i++]);
        }
    }

    /*********************************************************************
     * void Simon6496Decrypt(IOPUT DWORD text[],        
     *                  DWORD rk[]
     *                 )
     *
     * Overview:     This function implements the process of SIMON 64/96 Decrypt
     *
     *
     * PreCondition:    None
     *
     * Input:       
     *          DWORD []      text       The input buffer to the SIMON engine. The 
     *                                  encoded data will replace the original 
     *                                  content after the function call
     *         
     *          DWORD []     rk      Round keys
     * 
     * Output:          
     *          None
     *
     * Side Effects:    None
     * 
     ********************************************************************/         
        void Simon6496Decrypt(IOPUT DWORD text[],INPUT DWORD rk[]){
            int i;
            for(i = 41;i >= 0;){
                R32x2(text[0],text[1],rk[i--],rk[i--]);
            }
        }
    /*********************************************************************
     * void Simon6496Ctr(BYTE text[], 
     *          BYTE len, 
     *          BYTE key[], 
     *          BYTE nounce[])
     *
     * Overview:        This function implement Counter (CTR) mode of security 
     *                  engine to the input text. Counter mode is used to 
     *                  encrypt the data.
     *
     * PreCondition:    None
     *
     * Input:       
     *          BYTE *      text        The text to be encrypted/decrypted. The encrypted/decrypted
     *                                  data will replace the original content
     *                                  after this function call.
     *          BYTE        len         The length of the text to be encrypted/decrypted
     *          BYTE *      key         The security key for the XTEA engine
     *          BYTE *      nounce      The nounce to be used in the CTR mode,which length is more than BLOCK_SIZE
     * Output:          
     *          None
     *
     * Side Effects:    None
     * 
     ********************************************************************/
    void Simon6496Ctr(INPUT BYTE text[], BYTE len,BYTE key[],BYTE nounce[]){
        BYTE block = len/BLOCK_SIZE + 1;
        BYTE i,j;
        DWORD rk[ROUNT_KEY_NUM];
        Simon6496KeySchedule((DWORD*)key,rk);
        for(i = 0;i < block;i++){
            for(j = 0;j < BLOCK_SIZE-1;j++){
                tmpBlock[j] = nounce[j];
            }
            tmpBlock[BLOCK_SIZE-1] = i;
            Simon6496Encrypt((BLOCK_UNIT*)tmpBlock,rk); 
        
            for(j = 0; j < BLOCK_SIZE; j++){
                if(( i * BLOCK_SIZE + j) >= len){
                    break;
                }
                text[ i * BLOCK_SIZE + j ] ^= tmpBlock[j];
            }
        }
        return ;
    }

    /*********************************************************************
     * void Simon6496CbcMac(   BYTE *text, 
     *                 BYTE len, 
     *                 BYTE *key, 
     *                 BYTE *MIC)
     *
     * Overview:        This function implements CBC-MAC mode of security 
     *                  engine to the input text. CBC-MAC mode generates
     *                  Message Interity Code (MIC) to authenticate the 
     *                  input text.
     *
     * PreCondition:    None
     *
     * Input:       
     *          BYTE *      text        The text to be authenticated
     *          BYTE        len         The length of the input text
     *          BYTE *      key         The security key for the XTEA engine
     * Output:          
     *          BYTE *      MIC         The generated MIC from the CBC-MAC mode
     *
     * Side Effects:    None
     * 
     ********************************************************************/    
    void Simon6496CbcMac(   INPUT BYTE *text, 
                    INPUT BYTE len, 
                    INPUT BYTE *key, 
                    OUTPUT BYTE *MIC){
        BYTE block = len / BLOCK_SIZE + 1;
        BYTE i, j;
        DWORD rk[ROUNT_KEY_NUM];
        Simon6496KeySchedule((DWORD*)key,rk);
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
            Simon6496Encrypt((BLOCK_UNIT *)MIC, rk);
        }  
    }
    #if defined(MiAPP_SECURITY)
        /*********************************************************************
         * void Simon6496CcmEnc(    BYTE *text, 
         *                  BYTE headerLen, 
         *                  BYTE payloadLen, 
         *                  BYTE *key)
         *
         * Overview:        This function implements CCM mode of security 
         *                  engine to the input text. CCM mode ensures data
         *                  interity as well as secrecy. This function is used
         *                  to encode the data
         *
         * PreCondition:    None
         *
         * Input:       
         *          BYTE *      text        The text to be encrypted. The encrypted
         *                                  data will replace the original content
         *                                  after this function call.
         *          BYTE *      headerLen   The header length, used to authenticate, but
         *                                  not encrypted
         *          BYTE        payloadLen  The length of the text to be authenticated
         *                                  and encrypted
         *          BYTE *      key         The security key for the XTEA engine
         * Output:          
         *          None
         *
         * Side Effects:    None
         * 
         ********************************************************************/
        void Simon6496CcmEnc(IOPUT BYTE *text, 
                        INPUT BYTE payloadLen, 
                        INPUT BYTE *key){
            BYTE i;
            
            Simon6496CbcMac(text, payloadLen, key, tmpBlock);   
            
            for(i = 0; i < BLOCK_SIZE; i++){
                text[payloadLen + i] = tmpBlock[i];
            }
            //  padding,the tmpBlock will be used  the CTR nounce 
            for(i = 0; i < BLOCK_SIZE-1; i++){
                tmpBlock[i] = i;
            } 
            Simon6496Ctr(text, (payloadLen + BLOCK_SIZE), key, tmpBlock);    
        }
        /*********************************************************************
         * void  Simon6496CcmDec(    BYTE *text, 
         *                  BYTE headerLen, 
         *                  BYTE payloadLen, 
         *                  BYTE *key)
         *
         * Overview:        This function implements CCM mode of security 
         *                  engine to the input text. CCM mode ensures data
         *                  interity as well as secrecy. This function is used
         *                  to decode the data
         *
         * PreCondition:    None
         *
         * Input:       
         *          BYTE *      text        The text to be encrypted. The decrypted
         *                                  data will replace the original content
         *                                  after this function call
         *          BYTE        payloadLen  The length of the text to be authenticated
         *                                  and decrypted
         *          BYTE *      key         The security key for the XTEA engine
         * Output:          
         *          None
         *
         * Side Effects:    None
         * 
         ********************************************************************/ 
        BOOL Simon6496CcmDec(BYTE *text,BYTE payloadLen, BYTE *key){
            BYTE i;

            for(i = 0; i < BLOCK_SIZE-1; i++){
                tmpBlock[i] = i ;
            }
            Simon6496Ctr(text, payloadLen, key, tmpBlock);

            Simon6496CbcMac(text, (payloadLen - SEC_MIC_LEN), key, tmpBlock);
            for(i = 0; i < SEC_MIC_LEN; i++)
            {
                if( tmpBlock[i] != text[payloadLen - SEC_MIC_LEN + i] ){
                    return FALSE;
                }       
            } 
            return TRUE;
        }
    #else 
        /*********************************************************************
         * void Simon6496CcmEnc(    BYTE *text, 
         *                  BYTE headerLen, 
         *                  BYTE payloadLen, 
         *                  BYTE *key)
         *
         * Overview:        This function implements CCM mode of security 
         *                  engine to the input text. CCM mode ensures data
         *                  interity as well as secrecy. This function is used
         *                  to encode the data
         *
         * PreCondition:    None
         *
         * Input:       
         *          BYTE *      text        The text to be encrypted. The encrypted
         *                                  data will replace the original content
         *                                  after this function call.
         *          BYTE *      headerLen   The header length, used to authenticate, but
         *                                  not encrypted
         *          BYTE        payloadLen  The length of the text to be authenticated
         *                                  and encrypted
         *          BYTE *      key         The security key for the XTEA engine
         * Output:          
         *          None
         *
         * Side Effects:    None
         * 
         ********************************************************************/
        void Simon6496CcmEnc(IOPUT BYTE *text, 
                        INPUT BYTE headerLen, 
                        INPUT BYTE payloadLen, 
                        INPUT BYTE *key){
            BYTE i;
            
            Simon6496CbcMac(text, (headerLen + payloadLen), key, tmpBlock);   
            
            for(i = 0; i < BLOCK_SIZE; i++){
                text[headerLen + payloadLen + i] = tmpBlock[i];
            }
            //  padding，the tmpBlock will be used  the CTR nounce 
            for(i = 0; i < BLOCK_SIZE-1; i++){
                tmpBlock[i] = (i < headerLen) ? text[i] : 0;
            } 
            Simon6496EncryptCTR(&(text[headerLen]), (payloadLen + BLOCK_SIZE), key, tmpBlock);    
        }
        /*********************************************************************
         * void  Simon6496CcmDec(    BYTE *text, 
         *                  BYTE headerLen, 
         *                  BYTE payloadLen, 
         *                  BYTE *key)
         *
         * Overview:        This function implements CCM mode of security 
         *                  engine to the input text. CCM mode ensures data
         *                  interity as well as secrecy. This function is used
         *                  to decode the data
         *
         * PreCondition:    None
         *
         * Input:       
         *          BYTE *      text        The text to be encrypted. The decrypted
         *                                  data will replace the original content
         *                                  after this function call.
         *          BYTE *      headerLen   The header length, used to authenticate, but
         *                                  not decrypted
         *          BYTE        payloadLen  The length of the text to be authenticated
         *                                  and decrypted
         *          BYTE *      key         The security key for the XTEA engine
         * Output:          
         *          None
         *
         * Side Effects:    None
         * 
         ********************************************************************/ 
        BOOL Simon6496CcmDec(BYTE *text, BYTE headerLen, BYTE payloadLen, BYTE *key){
            BYTE i;

            for(i = 0; i < BLOCK_SIZE-1; i++){
                tmpBlock[i] = (i < headerLen) ? text[i] : 0;
            }
            CTR(&(text[headerLen]), payloadLen, key, tmpBlock);

            CBC_MAC(text, (headerLen + payloadLen - SEC_MIC_LEN), key, tmpBlock);
            for(i = 0; i < SEC_MIC_LEN; i++)
            {
                if( tmpBlock[i] != text[headerLen + payloadLen - SEC_MIC_LEN + i] ){
                    return FALSE;
                }       
            } 
            return TRUE;
        }
    #endif 
#endif



