GHDL = ghdl 
FLAG = "--std=08"

all:
	$ ghdl -a half_adder.vhdl
	$ ghdl -a full_adder_three.vhdl
	$ ghdl -a full_adder_three_tb.vhdl
	$ ghdl -e full_adder_three_tb
	$ ghdl -r full_adder_three_tb 
	$ ghdl -r full_adder_three_tb --vcd=adder.vcd
	$ gtkwave adder.vcd

