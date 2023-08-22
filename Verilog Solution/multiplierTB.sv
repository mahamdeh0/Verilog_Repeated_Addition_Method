// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

module testbench;
  reg CLK;
  reg [3:0] A,B;
  wire [7:0] P;
  integer j,k,i;
  multiplier t0(CLK,A,B,P);
  
  initial begin
    CLK = 0;
    for(i = 0;i < 1200;i=i+1)
      #5 CLK = ~CLK;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    for(k = 0;k <= 15;k=k+1)
      begin
        A = k;
        for(j = 0;j <= 15;j=j+1)
          begin
			B = j;
            #20;
          end
      end
  end
endmodule