
# FPGA-Based 7-Segment Display Controller

This project implements a digital controller to drive a multi-digit 7-segment display using a **Xilinx Spartan-6 FPGA**.

## System Architecture

The logic is partitioned into three specialized modules to ensure high-performance hardware synthesis:

* **T Flip-Flop (TFF)**: Acts as the fundamental sequential memory element, toggling its state on each clock edge to facilitate binary counting.
* **3-Bit Counter**: A synchronous counter module built from TFF stages that cycles through binary values 000 to 111 (0-7 decimal).
* **7-Segment Decoder**: A combinational module that maps the 3-bit binary input to the specific 7-bit segment pattern (A-G) required for visual display.



## Hardware Implementation

* **Platform**: Digilent Atlys Board (Xilinx Spartan-6 XC6SLX45).
* **Pin Mapping**: Utilized a User Constraint File (.ucf) to route internal Verilog signals to the physical display headers on the FPGA.


## Simulation & Verification

Design verification was conducted using **ISim** before hardware deployment:
* **Functional Logic**: Confirmed that the `seg[6:0]` outputs accurately represent the 3-bit internal count.
* **Timing Accuracy**: Analyzed transient waveforms at a 1.00us resolution to ensure synchronous state transitions.

## Project Structure

* `/src`: Verilog source files (`counter.v`, `TFF.v`).
* `/sim`: ISim waveform screenshots and simulation logs.
