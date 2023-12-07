.text
.globl main
main:
lw $a0,base
lw $a1,power
li $a2,1
lw $a3,base
jal loop
li $v0,10
syscall
loop:
beq $a2,$a1,goto
mul $a3,$a3,$a0
addi $a2,$a2,1
j loop
goto:
jr $ra
 
.data
base: .word 2
power: .word 3