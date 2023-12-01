#1.Store a value 3 in a register and then add it 10 times using loop instructions.
.text
.globl main
main:
li $t0,0
li $t1,10
li $s1,3
loop:
beq $t0,$t1,x
addi $t0,$t0,1
addi $s1,$s1,3
j loop
x:
syscall 