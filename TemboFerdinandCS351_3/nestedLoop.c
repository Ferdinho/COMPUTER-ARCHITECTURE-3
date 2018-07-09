// ferdinand Tembo

#include <stdio.h>


int main() {
    int i;
    int j;
    int k;
    int l;
    
    for(i = 1; i <8; i++) {
        for(k = 0; k < 8-i; k++){
            printf(" ");
        }
        for(j = 1; j <= i; j++) {
            if(j == i) {
                printf("* ");
            }
            else if (j==1){
                printf("* ");
            }
            else {
                printf("  ");
            }
        }
        
        printf("\n");
    }
    for(l=0;l<15;l++) {
        printf("*");
    }
    return 0;
}
