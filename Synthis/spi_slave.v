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
       
    endcase
end

//output logic
always@(posedge clk) begin
if(~rst_n) begin
    c_1 <= 10 ; 
    flag <= 0 ; MISO <= 0 ; 
    rx_valid <= 0 ;rx_data<= 0 ;
    
end 
else begin 
    case(cs)
        IDLE:begin
            rx_valid <= 0;
            c_1<=10;
            c_2<=8;
            f=1;
        end
        WRITE : begin
            if (c_1 > 0)  begin
                rx_data_temp[c_1-1]<=MOSI ;
                c_1 <= c_1-1;
            end
            else begin
                rx_valid <= 1 ;
                rx_data<=rx_data_temp;  
            end        
        end

        READ_ADD : begin
            if (c_1 > 0)  begin
                rx_data_temp[c_1-1]<=MOSI ;
                c_1 <= c_1-1;
            end
            else begin
                rx_valid <= 1 ;
                rx_data<=rx_data_temp;
                flag<=1;
                c_1<=10;  
            end 
        end

        READ_DATA : begin
            if (c_1 > 0 && f)  begin
                rx_data_temp[c_1-1]<=MOSI ;
                c_1 <= c_1-1;
            end
            else if(c_1==0 && f) begin
                rx_valid <= 1 ;
                rx_data<=rx_data_temp;
                f=0;  
            end 
            else begin 
                if (tx_valid) 
                    tx_data_temp <= tx_data;
                if (c_2 > 0 &&  tx_data_temp==tx_data) begin
                    MISO <= tx_data_temp[c_2-1];
                    c_2 <= c_2 - 1;
                end
                else begin
                    c_2<=8;
                    flag <= 0;
                end             
            end
        end    
    endcase    
end
end

endmodule

