// Code your design here
module multiplier(CLK,A,B,P);
  input CLK;
  input [3:0] A,B;
  output reg [7:0] P;
  reg [7:0] res;
  integer i;
  always @(posedge CLK)
    begin
      res = 0;
      for(i = 0; i< B; i = i + 1)
          res = res + A;
      P <= res;
    end
endmodule