GHDL = ghdl 
FLAG = "--std=08"

all:
	$ ghdl -a full_adder_two.vhdl
	$ ghdl -a full_adder_two_tb.vhdl
	$ ghdl -e full_adder_two_tb
	$ ghdl -r full_adder_two_tb 
	$ ghdl -r full_adder_two_tb --vcd=adder.vcd
	$ gtkwave adder.vcd