# COEN316Labs
# Multi-Port Register File for CPU Datapath

## Overview
This project implements a multi-port register file using VHDL as part of a CPU datapath design. The register file allows multiple registers to be read or written simultaneously. It features two read ports, one write port, and a write-enable signal to control data flow. The design is synthesized and tested using an FPGA and ModelSim for simulation.

## Features
- **Multi-Port Register File**: Two read ports and one write port
- **Control Signals**: Implements `reg_write`, `reg_dst`, `reg_in_src`, `alu_src`, `alu_op`, and `pc_sel` for precise operation control
- **Simulation & Synthesis**: Verified using ModelSim and synthesized on an FPGA platform
- **Arithmetic and Logic Operations**: ALU supports addition, subtraction, bitwise operations (AND, OR, XOR, NOR)
- **Branching and Jump Support**: Includes logic for handling control flow operations like BEQ, BNE, and JUMP instructions

## Architecture
The register file is a crucial component of the CPU datapath, storing data temporarily for computation. It interfaces with:
- **ALU**: Performs arithmetic and logic operations
- **Control Unit**: Manages data flow and signal routing
- **Instruction & Data Cache**: Handles memory interaction
- **Program Counter (PC)**: Ensures correct execution sequencing

### Key Components
1. **Register File (`regfile.vhd`)**: Stores and retrieves register values
2. **Arithmetic Logic Unit (ALU) (`alu.vhd`)**: Executes computations
3. **Control Unit (`control_unit.vhd`)**: Generates control signals
4. **Datapath (`cpu.vhd`)**: Integrates all components
5. **Instruction Cache (`i_cache.vhd`)** & **Data Cache (`d_cache.vhd`)**: Implements memory operations
6. **Sign Extender (`sign_extender.vhd`)**: Expands instruction operands when needed
7. **Next Address Logic (`next_address.vhd`)**: Handles branching and jumps

## Usage
1. **Simulation**:
   - Use ModelSim to verify functionality with predefined test cases.
   - Run `cpu_labtest.do` for CPU simulation.
   - Execute `d_cache.do`, `i_cache.do`, and `sign_extender.do` for individual module verification.

2. **Synthesis**:
   - Utilize Xilinx Vivado for FPGA synthesis.
   - The implementation has been tested on the `xc7a100tcsg324-1` FPGA board.
   - Check `cpu.xdc` for FPGA pin mappings.

## Running the Project
1. Clone the repository:
   ```sh
   git clone https://github.com/dannylombardo/multi-port-register-file.git
   ```
2. Navigate to the project directory and open in ModelSim or Vivado.
3. Run the testbench to verify functionality.
4. Synthesize for FPGA deployment.

## Contributing
Pull requests and issue reports are welcome! If you have improvements or bug fixes, feel free to contribute.

## License
This project is released under the MIT License.

## Author
Daniel Lombardo

