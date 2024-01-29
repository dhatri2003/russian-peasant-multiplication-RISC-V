# Russian Peasant Multiplication in RISC-V Assembly Language
.data
# Initialize the data section with the two numbers to be
multiplied
num1: .word 13
num2: .word 7
result: .word 0
.text
# Program starts at the .text section
la x1, result
# Load the first number into register t0
lw t0, num1
# Load the second number into register t1
lw t1, num2
# Initialize the result to 0
li t2, 0
loop:
# Check if the first number is odd
andi t3, t0, 1
beq t3, x0, skip_add
# If the first number is odd, add the second number to the result
add t2, t2, t1
skip_add:
# Right-shift the first number (divide by 2)
srli t0, t0, 1
# Left-shift the second number (multiply by 2)
slli t1, t1, 1
# Check if the first number is not zero, if yes, repeat the loop
bnez t0, loop
# Store the final result in the result variable
sw t2, 0(x1)
nop
