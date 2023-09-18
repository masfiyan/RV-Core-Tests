# rv-core-verification

## for fibonacci
  #### first 2 registers are input x1 and x2  
  #### and then the series will store in memory from forward 0x100 in 0 column
  #### and then it load data from memory into register x16

## Data & Control Hazard
### Code Overview

The provided code snippet is written in RISC-V assembly language and performs a simple loop with memory access. Here's a brief overview of the code:

1. Initialize `x5` to 0.
2. Initialize `x6` to 5.
3. Add the values in `x5` and `x6` and store the result in `x8`.
4. Enter a loop labeled as `LOOP`.
   - Increment the value in `x5` by 1.
   - Store the updated value in `x5` into memory at address 100(`x0`).
   - Check if the value in `x5` is equal to the value in `x6`.
   - If not equal, jump back to the `LOOP` label.
5. When the loop exits (i.e., `x5` equals `x6`), load a value from memory at address 100(`x0`) into `x7`.
6. The program ends.

### Register Usage

Here's a summary of which registers are used to store values in the code:

- `x5`: Used to store a counter value that is incremented within the loop.
- `x6`: Used to store the loop termination condition, which is 5 in this case.
- `x7`: Used to store a value loaded from memory when the loop exits.
- `x8`: Used to temporarily store the result of adding `x5` and `x6`. 

## Data Hazard
The provided code snippet is written in RISC-V assembly language and implements a simple loop that stores and loads values from memory until a certain condition is met. Here's a brief overview of the code:

1. Initialize `x5` to 3.
2. Enter a loop labeled as `LOOP`.
   - Increment the value in `x5` by 1.
   - Initialize `x6` to 7.
   - Store the value in `x6` into memory at an address determined by adding `100` and the value in `x5`.
   - Load a value from memory at the same address into `x7`.
   - Check if the values in `x5` and `x7` are not equal. If they are not equal, branch back to the `LOOP` label.

## 
