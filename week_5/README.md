In this week we create a Custom RISC-V core that will run our application bare metal program that was created last week using inline assembly code.
Tasks completed 

1. Created local variable version of the c application file
2. Updated and optimized inline assembly code
3. Tested the appplication after adding inline asssembly code
4. Created all.json file to generate the chipcron processor code
5. Generated processor core and testbench
   
   <img width="406" alt="image" src="https://github.com/jaya117/RISCV-HDP/assets/139655462/87ced05b-944b-4df5-9c99-e2f60cae3eb8">
   

7. Updated GPIO size and GPIO pin mappings in processor.v

   output reg write_done ; 

   output reg [2:0] instructions ; 

   input wire [4:0] input_gpio_pins;

   output reg [2:0] output_gpio_pins;  


   always @(posedge clk) 

   begin
   
    output_pins = {top_gpio_pins[31:29],24'b0, input_gpio_pins} ; 

    output_gpio_pins = top_gpio_pins[31:29]; 

    write_done = writing_inst_done ; 

    instructions = write_inst_count[2:0]; 

    end 

8. Updated input and output width in testbench.v

   reg [4:0] input_wires;
   
   wire [2:0] output_wires ; 

10. Initialized qll input pins to 1 at the reset

    initial begin

    rst=1;

    rst_pin=1; 

    neg_rst = 1; 

    resetn  = 1'b0;

    clk     = 1'b0;

    neg_clk = 1; 

    neg_rst = ~clk ;

    uart_rxd = 1'b1;

    neg_clk = 1'b1; 

    input_wires = 5'b11111;
    

12. Compiled and simulated the design using following command

   iverilog -o motion_sensitive_led_bar_code_v testbench.v processor.v

   vvp motion_sensitive_led_bar_code_v   
  



