addi x1,x0,0
addi x2,x0,1
addi x10,x0,4
addi x6,x0,40
addi x3,x0,0
addi x4,x3,4
sw x1,0x100(x3)
sw x2,0x100(x4)
addi x14,x0,8
addi x5,x0,8
addi x13,x0,8
addi x15,x0,4
addi x9,x0,4
add x8,x1,x2
up:
beq x5,x6,end
add x12,x0,x8
sw x12,0x100(x5)
lw x11,0x100(x9)
add x8,x11,x8
addi x5,x5,4
addi x9,x9,4
jal x7,up
end:
beq x3,x6,break
lw x16,0x100(x3)
addi x3,x3,4
jal x7,end
break:
