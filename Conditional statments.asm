#if temp is greater then 50 multiply with 8 if less multiply with 4 if equal add 10
.text 
.globl main
main:
li $t0,30
li $t1,50
bgt $t0,$t1,x
blt $t0,$t1,y
beq $t0,$t1,z
x: mul $t0,$t0,8
j exit
y: mul $t0,$t0,4
j exit
z: addi $t0,$t0,10
j exit
exit:
syscall  
