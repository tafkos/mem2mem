//-----------------------------------------------------------------------------
// system_stub.v
//-----------------------------------------------------------------------------

module system_stub
  (
    fpga_0_LEDs_8Bit_GPIO_IO_O_pin,
    fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin,
    fpga_0_Buttons_4Bit_GPIO_IO_I_pin,
    fpga_0_DDR_SDRAM_DDR_Clk_pin,
    fpga_0_DDR_SDRAM_DDR_Clk_n_pin,
    fpga_0_DDR_SDRAM_DDR_CE_pin,
    fpga_0_DDR_SDRAM_DDR_CS_n_pin,
    fpga_0_DDR_SDRAM_DDR_RAS_n_pin,
    fpga_0_DDR_SDRAM_DDR_CAS_n_pin,
    fpga_0_DDR_SDRAM_DDR_WE_n_pin,
    fpga_0_DDR_SDRAM_DDR_BankAddr_pin,
    fpga_0_DDR_SDRAM_DDR_Addr_pin,
    fpga_0_DDR_SDRAM_DDR_DQ_pin,
    fpga_0_DDR_SDRAM_DDR_DM_pin,
    fpga_0_DDR_SDRAM_DDR_DQS_pin,
    fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin,
    fpga_0_clk_1_sys_clk_pin,
    fpga_0_rst_1_sys_rst_pin,
    bram_block_1_BRAM_Rst_B_pin,
    bram_block_1_BRAM_Clk_B_pin,
    bram_block_1_BRAM_EN_B_pin,
    bram_block_1_BRAM_WEN_B_pin,
    bram_block_1_BRAM_Addr_B_pin,
    bram_block_1_BRAM_Din_B_pin,
    bram_block_1_BRAM_Dout_B_pin,
    bram_block_0_BRAM_Rst_B_pin,
    bram_block_0_BRAM_Clk_B_pin,
    bram_block_0_BRAM_EN_B_pin,
    bram_block_0_BRAM_WEN_B_pin,
    bram_block_0_BRAM_Addr_B_pin,
    bram_block_0_BRAM_Din_B_pin,
    bram_block_0_BRAM_Dout_B_pin
  );
  output [0:7] fpga_0_LEDs_8Bit_GPIO_IO_O_pin;
  input [0:3] fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin;
  input [0:3] fpga_0_Buttons_4Bit_GPIO_IO_I_pin;
  output fpga_0_DDR_SDRAM_DDR_Clk_pin;
  output fpga_0_DDR_SDRAM_DDR_Clk_n_pin;
  output fpga_0_DDR_SDRAM_DDR_CE_pin;
  output fpga_0_DDR_SDRAM_DDR_CS_n_pin;
  output fpga_0_DDR_SDRAM_DDR_RAS_n_pin;
  output fpga_0_DDR_SDRAM_DDR_CAS_n_pin;
  output fpga_0_DDR_SDRAM_DDR_WE_n_pin;
  output [1:0] fpga_0_DDR_SDRAM_DDR_BankAddr_pin;
  output [12:0] fpga_0_DDR_SDRAM_DDR_Addr_pin;
  inout [15:0] fpga_0_DDR_SDRAM_DDR_DQ_pin;
  output [1:0] fpga_0_DDR_SDRAM_DDR_DM_pin;
  inout [1:0] fpga_0_DDR_SDRAM_DDR_DQS_pin;
  inout fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin;
  input fpga_0_clk_1_sys_clk_pin;
  input fpga_0_rst_1_sys_rst_pin;
  input bram_block_1_BRAM_Rst_B_pin;
  input bram_block_1_BRAM_Clk_B_pin;
  input bram_block_1_BRAM_EN_B_pin;
  input [1:0] bram_block_1_BRAM_WEN_B_pin;
  input [1:0] bram_block_1_BRAM_Addr_B_pin;
  output [1:0] bram_block_1_BRAM_Din_B_pin;
  input [1:0] bram_block_1_BRAM_Dout_B_pin;
  input bram_block_0_BRAM_Rst_B_pin;
  input bram_block_0_BRAM_Clk_B_pin;
  input bram_block_0_BRAM_EN_B_pin;
  input [1:0] bram_block_0_BRAM_WEN_B_pin;
  input [1:0] bram_block_0_BRAM_Addr_B_pin;
  output [1:0] bram_block_0_BRAM_Din_B_pin;
  input [1:0] bram_block_0_BRAM_Dout_B_pin;

  (* BOX_TYPE = "user_black_box" *)
  system
    system_i (
      .fpga_0_LEDs_8Bit_GPIO_IO_O_pin ( fpga_0_LEDs_8Bit_GPIO_IO_O_pin ),
      .fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin ( fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin ),
      .fpga_0_Buttons_4Bit_GPIO_IO_I_pin ( fpga_0_Buttons_4Bit_GPIO_IO_I_pin ),
      .fpga_0_DDR_SDRAM_DDR_Clk_pin ( fpga_0_DDR_SDRAM_DDR_Clk_pin ),
      .fpga_0_DDR_SDRAM_DDR_Clk_n_pin ( fpga_0_DDR_SDRAM_DDR_Clk_n_pin ),
      .fpga_0_DDR_SDRAM_DDR_CE_pin ( fpga_0_DDR_SDRAM_DDR_CE_pin ),
      .fpga_0_DDR_SDRAM_DDR_CS_n_pin ( fpga_0_DDR_SDRAM_DDR_CS_n_pin ),
      .fpga_0_DDR_SDRAM_DDR_RAS_n_pin ( fpga_0_DDR_SDRAM_DDR_RAS_n_pin ),
      .fpga_0_DDR_SDRAM_DDR_CAS_n_pin ( fpga_0_DDR_SDRAM_DDR_CAS_n_pin ),
      .fpga_0_DDR_SDRAM_DDR_WE_n_pin ( fpga_0_DDR_SDRAM_DDR_WE_n_pin ),
      .fpga_0_DDR_SDRAM_DDR_BankAddr_pin ( fpga_0_DDR_SDRAM_DDR_BankAddr_pin ),
      .fpga_0_DDR_SDRAM_DDR_Addr_pin ( fpga_0_DDR_SDRAM_DDR_Addr_pin ),
      .fpga_0_DDR_SDRAM_DDR_DQ_pin ( fpga_0_DDR_SDRAM_DDR_DQ_pin ),
      .fpga_0_DDR_SDRAM_DDR_DM_pin ( fpga_0_DDR_SDRAM_DDR_DM_pin ),
      .fpga_0_DDR_SDRAM_DDR_DQS_pin ( fpga_0_DDR_SDRAM_DDR_DQS_pin ),
      .fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin ( fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin ),
      .fpga_0_clk_1_sys_clk_pin ( fpga_0_clk_1_sys_clk_pin ),
      .fpga_0_rst_1_sys_rst_pin ( fpga_0_rst_1_sys_rst_pin ),
      .bram_block_1_BRAM_Rst_B_pin ( bram_block_1_BRAM_Rst_B_pin ),
      .bram_block_1_BRAM_Clk_B_pin ( bram_block_1_BRAM_Clk_B_pin ),
      .bram_block_1_BRAM_EN_B_pin ( bram_block_1_BRAM_EN_B_pin ),
      .bram_block_1_BRAM_WEN_B_pin ( bram_block_1_BRAM_WEN_B_pin ),
      .bram_block_1_BRAM_Addr_B_pin ( bram_block_1_BRAM_Addr_B_pin ),
      .bram_block_1_BRAM_Din_B_pin ( bram_block_1_BRAM_Din_B_pin ),
      .bram_block_1_BRAM_Dout_B_pin ( bram_block_1_BRAM_Dout_B_pin ),
      .bram_block_0_BRAM_Rst_B_pin ( bram_block_0_BRAM_Rst_B_pin ),
      .bram_block_0_BRAM_Clk_B_pin ( bram_block_0_BRAM_Clk_B_pin ),
      .bram_block_0_BRAM_EN_B_pin ( bram_block_0_BRAM_EN_B_pin ),
      .bram_block_0_BRAM_WEN_B_pin ( bram_block_0_BRAM_WEN_B_pin ),
      .bram_block_0_BRAM_Addr_B_pin ( bram_block_0_BRAM_Addr_B_pin ),
      .bram_block_0_BRAM_Din_B_pin ( bram_block_0_BRAM_Din_B_pin ),
      .bram_block_0_BRAM_Dout_B_pin ( bram_block_0_BRAM_Dout_B_pin )
    );

endmodule

