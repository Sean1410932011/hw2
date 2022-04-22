
VERILOG = iverilog
TARGET = test0408.vcd
TEMP = test0408.vpp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): 0408_tb.v 0408.v
	$(VERILOG) -o $(TEMP) 0408_tb.v 0408.v

clean:
	rm $(TARGET)
© 2022 GitHub, Inc.
Terms
Privacy
