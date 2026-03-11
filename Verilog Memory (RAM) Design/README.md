
# Verilog Memory (RAM) Module Design

This project features the design and functional verification of a synchronous Random Access Memory (RAM) module using Verilog HDL. The system is designed to store and retrieve 8-bit data using a 3-bit addressing scheme, making it a fundamental component for larger embedded system architectures.

## Design Specifications

* **Memory Depth**: 8 locations (3-bit address space).
* **Data Width**: 8-bit word size.
* **Control Signals**: Includes synchronous `write_en` (Write Enable) and `read_en` (Read Enable) inputs.
* **Clocking**: All operations are triggered on the rising edge of the system clock (`posedge clk`).



## Functional Logic

The module (`MEM.v`) uses a 2D array of registers to represent the memory fabric:
1. **Write Operation**: When `write_en` is high, data at `Din` is stored into the memory array at the specific `write_address`.
2. **Read Operation**: When `read_en` is high, the data stored at `read_address` is driven to the `Dout` output register.

## Simulation & Verification

Verification was performed using a custom Verilog testbench (`testben.v`) in **ISim** to simulate real-world sequential conditions:
* **Data Integrity**: Successfully wrote value `171` to address `0` and value `200` to address `1`.
* **Validation**: Post-write read operations confirmed that the data retrieved from both addresses accurately matched the originally stored values.
* **Timing Analysis**: Verified stable state transitions at a 1.00us time resolution.



## Directory Structure

* `/src`: The core RTL design file.
* `/sim`: waveform screenshot
