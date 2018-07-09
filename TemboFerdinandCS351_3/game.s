// ferdinand Tembo

.data
guessPrompt:
                .asciz "Guess the number:"
high:
                .asciz "Too high Guess again. \n"
low:
                .asciz "Too low Guess again. \n"
win:
                .asciz "You guessed correctly in %d tries \n"
formatD:
                .ascii "%d"
count:
                .word 0
num:
                .word 0
randomNumber:
                .word 4
return:
                .word 0

.text
.global main
.global random


main:
        ldr r10, addOfReturn
        str lr,[r10]

        ldr r7, addRandomNumber
        ldr r7, [r7]


do:
        ldr r0,addOfGuess
        bl printf

        ldr r0, addOfFormat
        ldr r1, addNumber


        bl scanf
        ldr r1, addNumber
        ldr r1 , [r1]

        ldr r2, addCount
        ldr r3, [r2]
        add r3, r3,#1
        str r3, [r2]
        ldr r1, addNumber
        ldr r1 , [r1]
        cmp r1,r7
        bgt bigger
        blt smaller
        beq equal

equal:

        ldr r0,addOfWin
        ldr r1, addCount
        ldr r1, [r1]
        bl printf
        b end

smaller:
        ldr r0,addOfLow
        bl printf
        b do

bigger:
        ldr r0, addOfHigh
        bl printf
        b do


end:
        ldr r10, addOfReturn
        ldr lr,[r10]
        bx lr

addOfGuess: .word guessPrompt
addOfHigh: .word high
addOfLow: .word low
addOfWin: .word win
addOfFormat: .word formatD
addCount: .word count
addNumber: .word num
addRandomNumber : .word randomNumber
addOfReturn: .word return
.global printf
.global scanf


