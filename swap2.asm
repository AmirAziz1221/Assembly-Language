.text
.globl main
main:
    la $a0, abc     
    li $a1, 0      
    jal swap        
    li $v0, 10       
    syscall
swap:
    sll $t0, $a1, 2      
    add $t0, $t0, $a0     
    lw $t1, 0($t0)        
    lw $t2, 16($t0)        
    sw $t2, 0($t0)        
    sw $t1, 16($t0)        
    jr $ra                
.data
abc: .word 31, 42, 33, 56 ,90
