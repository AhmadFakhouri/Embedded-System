
# FPGA Stepper Motor Controller (FSM)

This project implements a custom hardware controller to drive a 4-phase stepper motor using a **Finite State Machine (FSM)** written in Verilog HDL. The design focuses on generating the precise switching sequences required to rotate the motor with high torque and smooth transitions.

## Design Methodology

The controller (`steppermotor.v`) is built around a robust 8-state machine architecture:

* **State Machine Logic**: Utilizes a `case` statement to cycle through eight unique states (s0 to s7) on each rising clock edge.
* **Full-Step Drive Sequence**: To maximize motor torque, the controller outputs a 2-phase-on sequence: `1001` → `1100` → `0110` → `0011`.
* **Control Inputs**: Features a synchronous `rst` (reset) signal to initialize the FSM to state `s0`.
* **Output Peripherals**: Drives four output pins (`out1` to `out4`) which interface with the motor's power driver circuit.



## Simulation & Verification

The design was verified using **ISim** to ensure the phase-shifting logic was timing-accurate:

* **Transient Analysis**: Simulated the FSM over a 1.00us window to verify the continuous cyclical transition of states.
* **Waveform Verification**: The simulation results, confirm that the output phases shift correctly without overlapping errors.



## Directory Structure

* `/src`: The FSM RTL design file (`steppermotor.v`).
* `/sim`: simulation waveforms, specifically.
