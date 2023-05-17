module Arthimatic_operator();
  
  
  reg signed [5:0] a,b,c,d,e,f,g,h;

  
  initial 
    begin 

      
        a=2'b10;
  #1    b=2'b11;
  #1    c=2'b10;
  #1    d=2'b11;
  #1    e=2'b10;
  #1    f=2'b01;
  #1    g=2'b11;
  
      
  #2   h=(a+b-c*d**e);
      
      
      $monitor("a=%d,b=%d,c=%d,d=%d,e=%d,f=%d,g=%d,h=%d",a,b,c,d,e,f,g,h,$time);
      
    end 
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
 
  
endmodule
