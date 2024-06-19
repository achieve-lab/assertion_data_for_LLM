module half_adder(input a, b, output S, Cout);
  assign S = a ^ b;
  assign Cout = a & b;
endmodule
