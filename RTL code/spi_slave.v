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
//output logic
always@(posedge clk) begin
if(~rst_n) begin
    c_1 <= 0 ; 
    flag <= 0 ; MISO <= 0 ; 
    rx_valid <= 0 ;rx_data<= 0 ;
    
end 
else begin 
    case(cs)
        WRITE : begin
            rx_data[9-c_1]<=MOSI ;
            c_1 <= c_1+1;
            rx_valid <= (c_1 == 9);
        end

        READ_ADD : begin
            rx_data[9-c_1]<=MOSI ;
            c_1 <= c_1+1 ;
            if(c_1==9) begin 
                rx_valid <= 1 ;
                flag <= 1 ;
            end 
        end

        READ_DATA : begin   
            if (tx_valid) begin
                    c_1 <= 0;
                    tx_data_temp <= tx_data;
                end
                if (c_1 < 8) begin
                    MISO <= tx_data_temp[7-c_1];
                    c_1 <= c_1 + 1;
                end
                rx_valid <= (c_1 == 1);
                flag <= 0;
           
        end
        
    endcase    
end
end


endmodule

