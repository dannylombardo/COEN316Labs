# Step 1: Create the work library
vlib work

# Step 2: Compile your VHDL files
vcom ALU.vhd

# Step 3: Simulate the top-level design (assuming alu_board is the top entity)
vsim work.alu

# Step 4: Add signals to the waveform window
add wave -r /*  ;# Adds all signals from the design

# Test Case 1: ADD operation with AND logic, check x_in = 0
force x 4'b0000   ;# x_in = 0
force y 4'b0011   ;# y_in != 0
force add_sub 0      ;# ADD operation
force logic_func 2'b00   ;# AND logic
force func 2'b00     ;
run 100 ns           ;

# Test Case 2: SUB operation with OR logic, check y_in = 0
force x 4'b1010   ;
force y 4'b0000   ;# y_in = 0
force add_sub 1      ;# SUB operation
force logic_func 2'b01   ;# OR logic
force func 2'b01     ;
run 100 ns           ;

# Test Case 3: ADD operation with XOR logic, no zero inputs
force x 4'b1111   ;
force y 4'b0001   ;
force add_sub 0      ;# ADD operation
force logic_func 2'b10   ;# XOR logic
force func 2'b10     ;
run 100 ns           ;

# Test Case 4: Check both x_in and y_in are zero (NOR logic)
force x 4'b0000   ;# x_in = 0
force y 4'b0000   ;# y_in = 0
force add_sub 1      ;# SUB operation
force logic_func 2'b11  ;# NOR logic
force func 2'b11     ;
run 100 ns           ;

# Test Case 5: Overflow condition, no zero inputs
force x 4'b1000   ;
force y 4'b1001   ;
force add_sub 0      ;# ADD operation
force logic_func 2'b00   ;
force func 2'b00     ;
run 100 ns           ;

# Step 5: End the simulation
Quit
