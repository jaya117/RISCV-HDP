//testbench for 4bit_addr

module four_bit_addr_tb();

reg [3:0]a,b;
reg c_in;
wire[3:0] s;
wire c_out;

  full_adder FA(.A(a), .B(b),.Cin(c_in),.SUM(s),.Cout(c_out));
initial begin
   $dumpfile("waveforms.vcd");
   $dumpvars(0,four_bit_addr_tb);
   $monitor("monitor a:%0b b:%0b c_in:%0b s:%0b c_out=%0b @ %0t", a, b, c_in, s, c_out , $time);
   a=4'b0001; b=4'b0000 ; c_in=1'b0;
   #50;
   a=4'b0001; b=4'b0010 ; c_in=1'b1;
   #50;
   a=4'b1010; b=4'b1111 ; c_in=1'b1;
   #50;
   a=4'b1101; b=4'b0101 ; c_in=1'b0;
   #50
   a=4'b1001; b=4'b0110 ; c_in=1'b1;
   #100;
end

endmodule
