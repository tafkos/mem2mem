//-----------------------------------------------------------------------------
// system_top.v
//-----------------------------------------------------------------------------

module system_top
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
     
  );
  output [0:7]      fpga_0_LEDs_8Bit_GPIO_IO_O_pin;
  input  [0:3]      fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin;
  input  [0:3]      fpga_0_Buttons_4Bit_GPIO_IO_I_pin;
  
  output            fpga_0_DDR_SDRAM_DDR_Clk_pin;
  output            fpga_0_DDR_SDRAM_DDR_Clk_n_pin;
  output            fpga_0_DDR_SDRAM_DDR_CE_pin;
  output            fpga_0_DDR_SDRAM_DDR_CS_n_pin;
  output            fpga_0_DDR_SDRAM_DDR_RAS_n_pin;
  output            fpga_0_DDR_SDRAM_DDR_CAS_n_pin;
  output            fpga_0_DDR_SDRAM_DDR_WE_n_pin;
  output [1:0]      fpga_0_DDR_SDRAM_DDR_BankAddr_pin;
  output [12:0]     fpga_0_DDR_SDRAM_DDR_Addr_pin;
  inout  [15:0]     fpga_0_DDR_SDRAM_DDR_DQ_pin;
  output [1:0]      fpga_0_DDR_SDRAM_DDR_DM_pin;
  inout  [1:0]      fpga_0_DDR_SDRAM_DDR_DQS_pin;
  inout             fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin;
  
  input             fpga_0_clk_1_sys_clk_pin;
  input             fpga_0_rst_1_sys_rst_pin;
  
  wire              BRAM1_RX_Rst_B_pin;
  wire              BRAM1_RX_Clk_B_pin;
  wire              BRAM1_RX_EN_B_pin;
  wire   [3:0]      BRAM1_RX_WEN_B_pin;
  wire   [31:0]     BRAM1_RX_Addr_B_pin;
  wire   [31:0]     BRAM1_RX_Din_B_pin;
  wire   [31:0]     BRAM1_RX_Dout_B_pin;
  
  wire              BRAM0_TX_Rst_B_pin;
  wire              BRAM0_TX_Clk_B_pin;
  wire              BRAM0_TX_EN_B_pin;
  wire   [3:0]      BRAM0_TX_WEN_B_pin;
  wire   [31:0]     BRAM0_TX_Addr_B_pin;
  wire   [31:0]     BRAM0_TX_Din_B_pin;
  wire   [31:0]     BRAM0_TX_Dout_B_pin;


// internal signals declarations
wire [31:0] conf_reg_O_w;
wire [31:0] conf_reg_I_w;

  // Instantiate the module
(* BOX_TYPE = "user_black_box" *)

system instance_name (
    .fpga_0_LEDs_8Bit_GPIO_IO_O_pin(fpga_0_LEDs_8Bit_GPIO_IO_O_pin), 
    .fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin(fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin), 
    .fpga_0_Buttons_4Bit_GPIO_IO_I_pin(fpga_0_Buttons_4Bit_GPIO_IO_I_pin), 
    .fpga_0_DDR_SDRAM_DDR_Clk_pin(fpga_0_DDR_SDRAM_DDR_Clk_pin), 
    .fpga_0_DDR_SDRAM_DDR_Clk_n_pin(fpga_0_DDR_SDRAM_DDR_Clk_n_pin), 
    .fpga_0_DDR_SDRAM_DDR_CE_pin(fpga_0_DDR_SDRAM_DDR_CE_pin), 
    .fpga_0_DDR_SDRAM_DDR_CS_n_pin(fpga_0_DDR_SDRAM_DDR_CS_n_pin), 
    .fpga_0_DDR_SDRAM_DDR_RAS_n_pin(fpga_0_DDR_SDRAM_DDR_RAS_n_pin), 
    .fpga_0_DDR_SDRAM_DDR_CAS_n_pin(fpga_0_DDR_SDRAM_DDR_CAS_n_pin), 
    .fpga_0_DDR_SDRAM_DDR_WE_n_pin(fpga_0_DDR_SDRAM_DDR_WE_n_pin), 
    .fpga_0_DDR_SDRAM_DDR_BankAddr_pin(fpga_0_DDR_SDRAM_DDR_BankAddr_pin), 
    .fpga_0_DDR_SDRAM_DDR_Addr_pin(fpga_0_DDR_SDRAM_DDR_Addr_pin), 
    .fpga_0_DDR_SDRAM_DDR_DQ_pin(fpga_0_DDR_SDRAM_DDR_DQ_pin), 
    .fpga_0_DDR_SDRAM_DDR_DM_pin(fpga_0_DDR_SDRAM_DDR_DM_pin), 
    .fpga_0_DDR_SDRAM_DDR_DQS_pin(fpga_0_DDR_SDRAM_DDR_DQS_pin), 
    .fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin(fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin), 
     
    .fpga_0_clk_1_sys_clk_pin(fpga_0_clk_1_sys_clk_pin), 
    .fpga_0_rst_1_sys_rst_pin(fpga_0_rst_1_sys_rst_pin), 
     
    //.BRAM1_RX_Rst_B_pin  (BRAM1_RX_Rst_B_pin), 
    .BRAM1_RX_Rst_B_pin  (fpga_0_rst_1_sys_rst_pin), 
    //.BRAM1_RX_Clk_B_pin  (BRAM1_RX_Clk_B_pin), 
    .BRAM1_RX_Clk_B_pin  (fpga_0_clk_1_sys_clk_pin), 
    .BRAM1_RX_EN_B_pin   (BRAM1_RX_EN_B_pin), 
    .BRAM1_RX_WEN_B_pin  (BRAM1_RX_WEN_B_pin), 
    .BRAM1_RX_Addr_B_pin (BRAM1_RX_Addr_B_pin), 
    .BRAM1_RX_Din_B_pin  (BRAM1_RX_Din_B_pin), 
    .BRAM1_RX_Dout_B_pin (BRAM1_RX_Dout_B_pin), 
     
    //.BRAM0_TX_Rst_B_pin(BRAM0_TX_Rst_B_pin), 
    .BRAM0_TX_Rst_B_pin  (fpga_0_rst_1_sys_rst_pin), 
    //.BRAM0_TX_Clk_B_pin  (BRAM0_TX_Clk_B_pin), 
    .BRAM0_TX_Clk_B_pin  (fpga_0_clk_1_sys_clk_pin), 
    .BRAM0_TX_EN_B_pin   (BRAM0_TX_EN_B_pin), 
    .BRAM0_TX_WEN_B_pin  (BRAM0_TX_WEN_B_pin), 
    .BRAM0_TX_Addr_B_pin (BRAM0_TX_Addr_B_pin), 
    .BRAM0_TX_Din_B_pin  (BRAM0_TX_Din_B_pin), 
    .BRAM0_TX_Dout_B_pin (BRAM0_TX_Dout_B_pin), 
     
    .xps_gpio_RXTXctrl_GPIO_IO_I_pin(conf_reg_I_w), 
    .xps_gpio_RXTXctrl_GPIO_IO_O_pin(conf_reg_O_w)
    );


// control logic to pass data from BRAM0 to BRAM1
wire clk = fpga_0_clk_1_sys_clk_pin,
     rst = fpga_0_rst_1_sys_rst_pin;
	  
reg [31:0] addr_cnt;

assign conf_reg_I_w = addr_cnt;


// this counter reset to 0 after rst and 
always @(posedge clk)
	if (rst)
		addr_cnt <= 0;
	else if (conf_reg_O_w[0] && addr_cnt != 1000)
		addr_cnt <= addr_cnt + 1;
	else if (~conf_reg_O_w[0])
		addr_cnt <= 0; 

assign BRAM0_TX_Addr_B_pin = addr_cnt,
       BRAM1_RX_Addr_B_pin = addr_cnt,

       BRAM1_RX_WEN_B_pin = 4'b1111,             // enable write in RX BRAM
       BRAM0_TX_WEN_B_pin = 4'b0,                // disable write in TX BRAM
       BRAM1_RX_Dout_B_pin = BRAM0_TX_Din_B_pin, // connect TX BRAM dout to RX BRAM din

       BRAM0_TX_EN_B_pin = 1'b1,
       BRAM1_RX_EN_B_pin = 1'b1;

endmodule

