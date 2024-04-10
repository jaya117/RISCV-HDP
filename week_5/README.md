In this week we create a Custom RISC-V core that will run our application bare metal program that was created last week using inline assembly code.
Tasks completed 

1. Created local variable version of the c application file
2. Updated and optimized inline assembly code
3. Tested the appplication after adding inline asssembly code
4. Created all.json file to generate the chipcron processor code
5. Generated processor core and testbench
6. Updated GPIO size and GPIO pin mappings in processor.v

   always @(posedge clk) 

   begin
   
    output_pins = {top_gpio_pins[31:29],24'b0, input_gpio_pins} ; 

    output_gpio_pins = top_gpio_pins[31:29]; 

    write_done = writing_inst_done ; 

    instructions = write_inst_count[2:0]; 

    end 

   
  



