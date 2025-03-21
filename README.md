# SPI-Slave-with-Single-Port-RAM
This project implements a SPI (Serial Peripheral Interface) slave module with a single port RAM block. The SPI slave module receives data from a master device and communicates with the single port RAM to store and retrieve data.
![spi](https://github.com/user-attachments/assets/177f3cca-dae0-4c03-8360-7beb8b46150d)

Project Overview
The project consists of the following:-

Codes folder: which contain the following
ram.dat: which represents the memory for the testbench
run.do: do file to run simulation in QuestaSim or ModelSim
RTL code folder:
spi_slave.v: design of SPI block
_RAM.v: design of RAM block
SPI_SLAVE_TOP.v: top module
run.tcl: tcl file to run design on Vivado and extract elaboration_shcematic.pdf, synthesized_shcematic.pdf, utilization report and report timing in addition to run elaboration, synthesis, implementation and generates bitstream file
Testbench folder:
SPI_SLAVE_tb.v: Verilog file represent SPI Slave block
RAM_tb.v: Verilog file represent Single Port Async RAM
SPI_TOP_tb.v: Verilog file instantiate the two blocks RAM and SPI
ram.dat: memory for testbench

Wire connections:
rx_data in the SPI slave module is connected to the din port in the RAM module.
rx_valid in the SPI slave module is connected to rx_valid in the RAM module.
dout in the RAM module is connected to tx_data in the SPI slave module.
tx_valid in the RAM module is connected to tx_valid in the SPI slave module


here is the fsm:

![fsm](https://github.com/user-attachments/assets/fb7b5f49-127e-4fa2-b35e-90a13fc09c2f)



System Level schematic: schematic for the block after synthesis on Vivado
basys_master.xdc: a constrain file for the target FPGA
bitstream file: bitstream file
netlist file: netlist file from Vivado
