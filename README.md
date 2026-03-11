# Embedded Systems and FPGA Design Portfolio

This repository showcases a collection of digital logic designs, hardware description language (HDL) projects, and FPGA implementations. These projects demonstrate my expertise in bridging the gap between low-level hardware architecture and high-level system control.

## 🛠️ Hardware & Development Tools

* **FPGA Platforms**: Xilinx Spartan-6 (Digilent Atlys Board).
* **Design Languages**: Verilog HDL.
* **Development Environments**: Xilinx ISE Design Suite, ISim.
* **Core Competencies**: RTL Design, Finite State Machines (FSM), Sequential Logic, and Peripheral Interfacing.

## 📂 Project Catalog

### 1. [FPGA 7-Segment Display Controller](./01-7-Segment-Controller)
A modular Verilog design that drives a multi-digit display using a 3-bit counter and a custom decoder.
* **Key Feature**: Implemented T-Flip Flops (TFF) for stable, synchronous counting.
* **Hardware Verified**: Tested and deployed on the Spartan-6 Atlys board.



### 2. [Synchronous RAM Module](./02-Memory-Module)
A high-performance memory block designed for 8-bit data storage with a 3-bit addressing scheme.
* **Key Feature**: Synchronous read/write operations triggered on the rising clock edge.
* **Verification**: 100% data integrity confirmed through ISim testbench simulations.

### 3. [Stepper Motor Controller FSM](./03-Stepper-Motor-Controller)
A robust 8-state Finite State Machine (FSM) designed to drive 4-phase stepper motors.
* **Key Feature**: Implemented a "full-step" sequence (1001, 1100, 0110, 0011) for maximum torque.
* **Timing**: Verified cyclical phase transitions through comprehensive transient analysis.



## 🔬 Technical Skills Demonstrated

* **RTL Design**: Writing synthesizable Verilog code for complex digital logic.
* **FPGA Prototyping**: Mapping internal signals to physical hardware pins via User Constraint Files (.ucf).
* **Logic Verification**: Writing advanced testbenches to simulate and debug hardware behavior in ISim.

---
*Maintained by Ahmad Fakhouri – Computer Engineer*
