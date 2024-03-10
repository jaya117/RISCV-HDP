//this is the basic 4 bit full addr code in verilog
//It's combinational circuit that takes in two 4 bit input operands
//performs addition on the bits and generate the carry bit and sum 

module full_adder( A, B, Cin, SUM, Cout);
  output [3:0] SUM;
  output Cout;
  input  [3:0] A, B;
  input  Cin;

  assign {Cout,SUM}= A+B+Cin;

endmodule
