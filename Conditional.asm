.text
.globl main
main:
li $s5,10
li $s0,0
beq $s5,$s0,label
li $s5,0
j y
label: li $s5,85
y: