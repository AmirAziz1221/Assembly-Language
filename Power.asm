.text
.globl main
main:
li $t0,2
li $t1,3
li $t2,1
A:
beq $t2,$t1,exict
addi $t2,$t2,1
mul $t0,$t0,2
j A
exict: