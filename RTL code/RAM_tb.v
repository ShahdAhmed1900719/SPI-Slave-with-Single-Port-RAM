module RAM_tb();
reg [9:0]din_tb;
reg rx_vaild_tb,clk,rst_n;
wire [7:0] dout_dut;
wire tx_valid_dut;

RAM inst(din_tb  , clk , rst_n , rx_vaild_tb , tx_valid_dut, dout_dut );

initial begin
    clk=0;
    forever begin
        #1 clk=~clk;
    end
end

initial begin
//rest test
rst_n=0;
@(negedge clk);
rst_n=1;
//write test
din_tb=10'b0000000100;
rx_vaild_tb=1;
@(negedge clk);
din_tb=10'b0100000111;
rx_vaild_tb=1;
@(negedge clk);
//read test 
din_tb=10'b1000000100;
rx_vaild_tb=1;
@(negedge clk);
din_tb=10'b1100000000;
@(negedge clk);
$stop;
end
endmodule
