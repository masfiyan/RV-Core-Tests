addi x5 x0 0
addi x6 x0 5
add x8 x6 x5
LOOP:
addi x5 x5 1
sw x5 100(x0)
beq x5 x6 ANS
jal LOOP
ANS: lw x7 100(x0)
