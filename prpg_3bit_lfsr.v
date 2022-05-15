module prpg_3bit_lfsr(clk, clr, p_output);
input clk;
input clr;
output [3:1] p_output;
reg [3:1] tmp;
initial tmp = 3'b1;
always@ (posedge clk)
    begin
        if (clr)
            tmp<=1;
        else
        begin
            tmp[3] <= tmp[2];
            tmp[2] <= tmp[1];
            tmp[1] <= tmp[3]^tmp[1];
        end
    end
assign  p_output = tmp;
endmodule