.text
.globl main
main:
li $t0,10
li $t1,5
beq $t0,$t1,x
mul $t0,$t0,4
mul $t1,$t1,4
j y
x: 
mul $t0,$t0,2
mul $t1,$t1,2
y:
