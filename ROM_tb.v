module ROM_tb();
wire[32:0] out;
reg[7:0] addr;
ROM dut (out,addr);
initial begin
addr<=8'b00000000;
end
always begin
    #10
    addr<=addr + 8'b00000001;
end
initial begin
#1500 $stop;
end
endmodule
