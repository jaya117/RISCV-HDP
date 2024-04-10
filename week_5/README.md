In this week we create a Custom RISC-V core that will run our application bare metal program that was created last week using inline assembly code.
Tasks completed 

1. Created local variable version of the c application file
2. Updated and optimized inline assembly code
3. Tested the appplication after adding inline asssembly code
4. Created all.json file to generate the chipcron processor code
5. Generated processor core and testbench
6. Updated GPIO size and GPIO pin mappings in processor.v

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

7. Updated input and output width in testbench.v
8. Initialized qll input pins to 1 at the reset 
9. Compiled and simulate the design using following command

   iverilog -o motion_sensitive_led_bar_code_v testbench.v processor.v

   vvp motion_sensitive_led_bar_code_v   
  



