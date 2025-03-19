module SPI (MOSI,MISO,SS_n,clk,rst_n,tx_valid,tx_data,rx_valid,rx_data);

parameter IDLE = 3'b000 ;
parameter CHK_CMD = 3'b001 ;
parameter WRITE = 3'b010 ;
parameter READ_ADD = 3'b011 ;
parameter READ_DATA = 3'b100 ;


input [7:0] tx_data ;
input MOSI,SS_n,clk,rst_n,tx_valid ; 


output reg [9:0] rx_data ; 
output reg MISO,rx_valid ;

reg flag,f ;
reg [2:0] cs,ns ;
reg [3:0] c_1,c_2;
reg [9:0] rx_data_temp;
reg [7:0] tx_data_temp ;

 //state memory
always@(posedge clk) begin
    if(~rst_n) 
    cs<=IDLE ;
    else 
    cs<=ns ;    
end

//next state logic
always@(*) begin
    case (cs)
       IDLE : begin
        if(SS_n) 
            ns=IDLE ;
        else 
            ns=CHK_CMD ;
       end

       CHK_CMD : begin
        if( !SS_n && !MOSI)   ns=WRITE ;
        else if(!SS_n && MOSI && !flag)  ns=READ_ADD ;
        else if(!SS_n && MOSI && flag) ns=READ_DATA ;
        else if(SS_n) ns=IDLE ;
        else
            ns=IDLE;         
       end

       WRITE : begin
        if(SS_n) ns=IDLE ;
        else ns=WRITE ;
       end

       READ_ADD : begin
        if(SS_n) ns=IDLE ;
        else ns=READ_ADD ;        
       end

       READ_DATA : begin
        if(SS_n) ns=IDLE ;
        else ns=READ_DATA ;          
       end
       default 
         ns=IDLE;
    endcase
end



endmodule

