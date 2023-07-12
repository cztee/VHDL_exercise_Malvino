The VHDL codes are simulated using GHDL.
Steps:
1. ghdl -a XXXX.vhdl 
2. ghdl -a XXXX_tb.vhdl
3. ghdl -r entity_name_in_TB --vcd=XXXX.vcd
4. gtkwave XXXX.vcd