module prpg_3bit_lfsr_tb;
reg clk,clr;
wire [3:1] p_output;
initial begin
    #0;
    forever
    begin
        clk = 1'b1;
        #10 clk = 1'b0;
        #5;
    end
end
initial begin
    #0 clr=1'b1;  
    #5 clr=1'b0;
    #200 $finish;
end
prpg_3bit_lfsr prpg_3bit_lfsr_tb(.clk(clk), .clr(clr), .p_output(p_output));
initial begin
    $dumpfile("prpg_3bit_lfsr.vcd");
    $dumpvars(0, prpg_3bit_lfsr_tb);
end
endmodule