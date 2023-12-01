# Store five integer values and compare each value (arr[i]) wih k==5, if it equals
multiply this value with 2 else with 4.
.data
array:  .word 1, 3, 5, 7, 9 
k:  .word 7               
.text
.globl main
main:
    li $t0, 0                 
    li $t1, 4                
loop:
    lw $t2, k                
    lw $t3, array($t0)       
    beq $t3, $t2, exit_loop  
    addi $t0, $t0, 1         
    blt $t0, $t1, loop       
exit_loop:
    li $v0, 10                
    syscall                              