/*******************************************************test bench is the master**************************/
module SPI_SLAVE_tb();                                
reg MOSI_tb,SS_n_tb,clk,rst_n,tx_valid_tb;
reg [7:0]tx_data_tb;
wire MISO_dut,rx_valid_dut;
wire [9:0]rx_data_dut;

SPI spi(.MOSI(MOSI_tb),.MISO(MISO_dut),.SS_n(SS_n_tb),.clk(clk),.rst_n(rst_n),.tx_valid(tx_valid_tb),.tx_data(tx_data_tb),.rx_valid(rx_valid_dut),.rx_data(rx_data_dut));
//SPI_SLAVE spi(.MOSI(MOSI_tb),.MISO(MISO_dut),.SS_n(SS_n_tb),.clk(clk),.rst_n(rst_n),.rx_data(rx_data_dut),.rx_valid(rx_valid_dut),.tx_data(tx_data_tb),.tx_valid(tx_valid_tb));

initial begin
    clk=0;
    forever begin
        #1 clk=~clk;
    end
end

initial begin
rst_n=0;
SS_n_tb=1;
@(negedge clk);
rst_n=1;
SS_n_tb=0;
@(negedge clk);
MOSI_tb=0;             //write
SS_n_tb=0;
/**********************address********/
@(negedge clk);
MOSI_tb=0;      //say it is an address
@(negedge clk);
MOSI_tb=0;      //say it is an address
@(negedge clk);
MOSI_tb=0;        //send 00000100(0x4) address
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
/********************stop communication*****************/
SS_n_tb=1;
@(negedge clk);
SS_n_tb=0;
@(negedge clk);
MOSI_tb=0;
SS_n_tb=0;
@(negedge clk);
/*******************data*************/
MOSI_tb=1;               //data= 00001111 =0x10f   //0100001111
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
/*****************************stop comunication***********************/
SS_n_tb=1;
@(negedge clk);
/****************************read************************************/
SS_n_tb=0;
@(negedge clk);
SS_n_tb=0;
MOSI_tb=1; 
@(negedge clk);
/***************************read address*****************************/
MOSI_tb=0;      //say it is an address
@(negedge clk);
MOSI_tb=0;      //say it is an address
@(negedge clk);
MOSI_tb=0;        //send 00000100(0x4) address
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=1; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
/********************************stop communication**************************************/
SS_n_tb=1;
@(negedge clk);
SS_n_tb=0;
@(negedge clk);
MOSI_tb=1;
SS_n_tb=0;           //read data
@(negedge clk);
/************************************read data****************************************/
tx_data_tb=8'b10101010;
tx_valid_tb=1'b1;
@(negedge clk);
repeat(8)
    @(negedge clk);

$stop;    
end
endmodule


