/*******************************************************test bench is the master**************************/
module SPI_TOP_tb();                                
reg MOSI_tb,SS_n_tb,clk,rst_n;
wire MISO_dut;


SPI_TOP spi_top(.MOSI(MOSI_tb),.SS_n(SS_n_tb),.clk(clk),.rst_n(rst_n),.MISO(MISO_dut));

initial begin
    clk=0;
    forever begin
        #1 clk=~clk;
    end
end

initial begin
    $readmemb("mem.dat",spi_top.ram.mem);
rst_n=0;
@(negedge clk);
rst_n=1;
@(negedge clk);
SS_n_tb=0;
@(negedge clk);
MOSI_tb=0;             //write
SS_n_tb=0;
@(negedge clk);
/**********************address********/
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
@(negedge clk);
SS_n_tb=1;
@(negedge clk);
SS_n_tb=0;
@(negedge clk);
MOSI_tb=0;
SS_n_tb=0;
@(negedge clk);
/*******************data*************/
MOSI_tb=0;               //data= 00001111 =0x10f   //0100001111
@(negedge clk);
MOSI_tb=1; 
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
@(negedge clk);
/*****************************stop comunication***********************/
SS_n_tb=1;
@(negedge clk);    //data writen into memory 
/**********************************read*******************************/
SS_n_tb=0;
@(negedge clk);
MOSI_tb=1;             //read
SS_n_tb=0;
@(negedge clk);
/****************************read address**********************************/
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
@(negedge clk);
/******************************stop******************/
SS_n_tb=1;
@(negedge clk);
SS_n_tb=0;
@(negedge clk);
MOSI_tb=1;             //read data
SS_n_tb=0;
@(negedge clk);
/******************************read data*****************************************/
MOSI_tb=1;      //say it is an address
@(negedge clk);
MOSI_tb=1;      //say it is an address
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
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
MOSI_tb=0; 
@(negedge clk);
@(negedge clk);

repeat(10)
    @(negedge clk);
$stop;    
end
endmodule

