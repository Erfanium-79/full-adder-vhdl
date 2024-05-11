GHDL = ghdl 
FLAG = "--std=08"

all:
	$ ghdl -a mux2to1.vhdl
	$ ghdl -a full_adder_one.vhdl
	$ ghdl -a full_adder_one_tb.vhdl
	$ ghdl -e full_adder_one_tb
	$ ghdl -r full_adder_one_tb 
	$ ghdl -r full_adder_one_tb --vcd=adder.vcd
	$ gtkwave adder.vcd

