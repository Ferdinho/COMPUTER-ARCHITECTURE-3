#include <stdio.h>
#include <stdlib.h>

#include <time.h>
#include <stdbool.h>
#include <mach/boolean.h>


int main() {

    int randomNumber = rand() %100; //rand() generates random nomber from 0-100
    int count = 0 ;
    bool game = true;
    int num ;

    printf("Guess the number (1 to 100): " );
   
    do {
        scanf("%d",&num);
        count++ ;

        if( num > randomNumber )
            printf("Too High. Try again. ");

        else if( num < randomNumber )
            printf("Too low. Try again. ");

        else {
            printf("You guessed correctly in %d tries!\n",count);
            game = false;
        }
    }
    while(game==true);
}
