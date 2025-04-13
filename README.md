# RAM-DESIGN

*COMPANY*: CODETECH IT SOLUTION

*NAME*: TANUSHREE M M

*INTERN ID*: CT06WG114

*DOMAIN*: VLSI

*MENTOR*: NEELA SANTOSH

*DESCRIPTION*:This repository presents the development and simulation of a simple synchronous Random Access Memory (RAM) module using Verilog HDL. The module supports both read and write operations, controlled by clock-driven logic, and is designed for integration into digital systems such as processors, controllers, or custom logic architectures.

The design and verification processes were carried out using two leading industry-standard tools:

Cadence Virtuoso – for schematic-level design and analog/digital mixed-signal simulation.

The primary objective of this project is to implement a synchronous RAM block capable of storing data in memory locations that can be accessed via read and write operations, triggered on the positive edge of a clock signal. Synchronous RAM is widely used in digital systems where timing and control are essential, and operations must align with a global clock.

This RAM design is modular, making it suitable for integration into larger designs or as an educational tool to understand memory systems in digital electronics.

Word Width: 8-bit data

Address Width: 4-bit address lines (16 memory locations)

Synchronous Operation: All read and write operations are clock-triggered

Write Enable: Controlled via a dedicated signal

Simple Interface: Inputs for clk, we (write enable), addr, and din; output dout for data read

Behavioral Verilog: Designed in synthesizable Verilog for FPGA or ASIC workflows

adence Virtuoso

Used for schematic-level visualization and logic simulation

Simulated waveforms for read and write cycle verification

Integration with mixed-signal designs for advanced use cases

Write Cycle:
we (write enable) is set to HIGH.

On the rising edge of the clock, data (din) is written into the memory location specified by addr.

Read Cycle:
we is set to LOW.

On the rising edge of the clock, the memory content at addr is assigned to output dout.

All operations are synchronous, meaning both read and write actions only take place on the positive clock edge, ensuring predictable and stable behavior in digital systems.

🧪 Testbench
A Verilog testbench is included to:

Simulate various read/write cycles

Apply randomized or predefined test patterns

Observe correct memory behavior using waveform viewers (like GTKWave or Vivado Sim)

This helps verify the correct implementation and timing of the RAM under different conditions.

📈 Learning Outcomes
Through this project, the following digital design concepts are reinforced:

Synchronous digital memory modeling

Clocked sequential logic behavior

Read/Write operation timing

Simulation using industry-standard tools (Cadence and Vivado)

Creating reusable and synthesizable Verilog modules

How to Run the Project

In Cadence Virtuoso:
Import the Verilog module into a new cell view

Create a testbench or schematic symbol for simulation

Simulate using the ADE environment to visualize waveforms

*CODE*:

*OUTPUT*: 


