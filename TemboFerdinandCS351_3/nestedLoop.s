// ferdinand Tembo
.data

i:
    .word 1
k:
    .word 0
j:
    .word 1
l:
    .word 0

newLine:
        .asciz "\n"
star1:
        .asciz "*"
star2:
        .asciz "* "
space:
        .asciz " "
space2:
        .asciz "  "
space2:
        .asciz"a"
return:
        .word 0

.text
.global main
.extern printf

main:
        ldr r1, addOfReturn
        str lr, [r1]

        ldr r2, addOfI // adress of i
        ldr r3,[r2]    // value of i

        ldr r4, addOfK // adress of k
        ldr r5,[r4]    // value of k

        ldr r6, addOfJ  //adress of j
        ldr r7,[r6]  // value of j

        ldr r8, addOfL  // adress of l
        ldr r9,[r8]  // value of l

        b loop1

printSpace:
            ldr r0, addOfSpace2
            bl printf
            ldr r4, addOfK // adress of k
            ldr r5,[r4]
            add r5,r5,#1
            str r5,[r4]

loop2:

            mov r10,#8
            sub r11,r10,r3
            cmp r5,r11
            ble printSpace


printStar:
            ldr r0, addOfStar
            bl printf

printSpace2:
            ldr r0, addOfSpace
            bl printf
            add r7,r7,#1

loop3:
            add r12, r3,r3
            cmp r7,r12
            blt printSpace2

test:
            cmp r7,#2
            bge printStar2

printStar2:

            ldr r0, addOfStar
            bl printf

printNewline:
            ldr r0, addOfNewLine
            bl printf


loop1:

            cmp r3,#8
            blt loop2

end:
            ldr r1, addOfReturn
            ldr lr, [r1]
            bx lr

addOfI: .word i
addOfK: .word k
addOfJ: .word j
addOfL: .word l
addOfSpace2: .word space2
addOfNewLine: .word newLine
addOfSpace: .word space
addOfStar: .word star
addOfReturn: .word return
.global printf

