vlib work
vlog SPI_top.v _RAM_.v SPI_top_tb.v SPI_SLAVE_tb.v RAM_tb.v spi_slave.v
vsim -voptargs=+acc work.SPI_TOP_tb
add wave *
run -all
