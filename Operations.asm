    .data
array:  .word 1, 3, 5, 7, 9    
k:      .word 5        
.text
.globl main
main:
    li $t0, 0       
    li $t1, 4       
    li $t2, 2  
    li $t3, 4     
loop:
lw $t4, k         
lw $t5, array($t0)  
beq $t5, $t4, equal 
mul $t5, $t5, $t3   
j after_comparison 
equal:
mul $t5, $t5, $t2 
after_comparison:
sw $t5, array($t0) 
addi $t0, $t0, 1  
blt $t0, $t1, loop
li $v0, 10   
syscall     
