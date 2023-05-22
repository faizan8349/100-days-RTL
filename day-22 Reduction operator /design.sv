// Code your design here
// Code your design here
// Code your design here
module  Relational_operator();
  reg signed [5:0] a,b,c,d,e,f,g,h,i,j,k;
  
  
  initial 
    
    begin 
  
      a=4'b0110;
      b=4'b111x;
      c=4'b1101;
      d=4'b1011;
      e=4'b0111;
      
      f = &a;
      g = |d;
      h = ~&e;
      i = ~|b;
      j = ^e;
      k = ~^c;
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,i=%b,j=%b,k=%b",a,b,c,d,e,f,g,h,i,j,k);
    
    end 
       
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
  
endmodule


