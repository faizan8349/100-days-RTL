// Code your design here
module m;
  reg [3:0] b,c,m,k;
  logic [3:0] a,d;
  
  assign a=c+b;
  
  initial 
    begin 
      
      c=8;
      b=4;
  d=4;
      k=6;
    end 
  
  initial

    begin   
    m=d+k;
  end 
  
  initial 
    $monitor("a=%d,m=%d",a,m);
  
  initial 
  
    begin 
      
      $dumpfile("dump.vcd");
     $dumpvars();
      
    end 
  
endmodule 
  
