# mem2mem
basic Xilinx ISE project implementing memory to memory data transfer with Microblaze CPU Embeeded system

# How to properly open the project (workaraound to recreate the project after cloning)   
1. Open ISE-project in ISE 14.7:   
  `ISE/mem2mem_ise.xise`  
2. Remove `system.xps` from source tree in Design hierarhy  
3. Add source in ISE:  
   `EDK/system.xps`  
4. Add copy of source in ISE  
   `EDK/data/system.ucf`  
