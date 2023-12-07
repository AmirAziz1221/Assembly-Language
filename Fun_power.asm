.data
base:   .word 4 
power:  .word 3     
result: .word 0        
.text
.globl main
.globl function
main:
    li $t2,1
    lw $a0, base   
    lw $a1, power      
    jal function 
    move $t0, $v0   
    li $v0, 10        
    syscall
function:
    move $v0, $a0      
    li $t0, 1          
loop:
    beq $a1, $t2, done 
    mul $v0,$v0, $a0                   
    addi $a1, $a1, -1   
    j loop        
done:
    jr $ra  