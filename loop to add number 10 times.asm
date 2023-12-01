.data
value: .word 3
.text
.globl main
main:
li $t0,0
li $t1,10
lw $t2,value
loop:
beq $t0,$t1,x
add $t3,$t3,$t2
addi $t0,$t0,1
j loop
x: li $v0,10
syscall