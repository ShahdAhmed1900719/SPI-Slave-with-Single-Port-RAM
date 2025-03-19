module SPI_TOP(MOSI,SS_n,clk,rst_n,MISO);
parameter rx_data_width = 10;
parameter tx_data_width = 8;
parameter mem_depth=256 ;
parameter addr_size=8 ;
/***********************ports**********************/ 
input MOSI,SS_n,clk,rst_n;
output  MISO;
/******************internal signals*****************/
wire [rx_data_width-1:0] rx_data;
wire rx_vaild,tx_vaild;
wire [tx_data_width-1:0] tx_data;
/********************connect modules*****************/
RAM  ram(.din(rx_data)  , .clk(clk) , .rst_n(rst_n) , .rx_valid(rx_vaild) , .tx_valid(tx_vaild), .dout(tx_data) );
SPI spi(.MOSI(MOSI),.MISO(MISO),.SS_n(SS_n),.clk(clk),.rst_n(rst_n),.tx_valid(tx_vaild),.tx_data(tx_data),.rx_valid(rx_vaild),.rx_data(rx_data));

endmodule
