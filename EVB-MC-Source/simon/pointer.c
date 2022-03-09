#include<stdio.h>
#include"simon.h"

// union data{
//     BYTE val;
//     struct{
//         BYTE     
//     }
// };

int main(){
    union data a;
    a.val = 0x01;
    printf("%lu %lu",sizeof(a),sizeof(union data));
    return 0;
}