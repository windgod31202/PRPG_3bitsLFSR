VERILOG = iverilog
TARGET = prpg_3bit_lfsr.vcd

$(TARGET) : prpg_3bit_lfsr.vvp
	vvp prpg_3bit_lfsr.vvp

prpg_3bit_lfsr.vvp: prpg_3bit_lfsr_tb.v prpg_3bit_lfsr.v
	$(VERILOG) -o prpg_3bit_lfsr.vvp prpg_3bit_lfsr_tb.v prpg_3bit_lfsr.v

clean:
	-del $(TARGET)