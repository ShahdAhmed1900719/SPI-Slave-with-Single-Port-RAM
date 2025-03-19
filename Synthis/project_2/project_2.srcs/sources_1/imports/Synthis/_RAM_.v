module RAM (din  , clk , rst_n , rx_valid , tx_valid, dout );

parameter mem_depth=256 ;
parameter addr_size=8 ;

input  clk , rst_n ,rx_valid;
input [addr_size+1:0] din ;

output reg [addr_size-1:0] dout ;
output reg tx_valid ;

reg [addr_size-1:0] mem [mem_depth-1:0] ;
reg [addr_size-1:0] addr ;

always@(posedge clk) begin
    if(~rst_n) begin
        dout<=0 ;
        tx_valid<=0 ;
        end

        else

        case (din[addr_size+1:addr_size])

           2'b00:begin
            if(rx_valid)
            addr<=din[addr_size-1:0] ;
           end 

           2'b01:begin
            if(rx_valid)
            mem[addr]<=din[addr_size-1:0] ;
           end

           2'b10:begin
            if(rx_valid) 
            addr<=din[addr_size-1:0] ;
           end

           2'b11:begin
            if(rx_valid)begin 
                dout<=mem[addr] ;
                tx_valid<=1 ;
            end          
                    end
        endcase
    end
endmodule