GHDL = ghdl 
FLAG = "--std=08"

all:
	$ ghdl -a full_adder_four.vhdl
	$ ghdl -a full_adder_four_tb.vhdl
	$ ghdl -e full_adder_four_tb
	$ ghdl -r full_adder_four_tb 
	$ ghdl -r full_adder_four_tb --vcd=adder.vcd
	$ gtkwave adder.vcd
