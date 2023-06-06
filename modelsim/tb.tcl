# stop any simulation that is currently running
quit -sim

# create the default "work" library
vlib work;

# compile the Verilog source code in the parent folder
vlog -nolock ../*.v
# compile the Verilog code of the testbench
vlog -nolock ../tb/*.v
# start the Simulator
vsim work.Addern_tb -Lf 220model -Lf altera_mf_ver -Lf verilog
# show waveforms specified in wave.do
do wave.do
# advance the simulation the desired amount of time
run -All
