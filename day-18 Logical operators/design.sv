// Code your design here
// Code your design here
// Code your design here
// Code your design here
module logical_operator();
  
  reg [3:0] a,b,c,d,e,f,g;
  
  
  initial 
    
    begin 
  
      a=4'b1011;
      b=4'b0000;
      c=4'b1010;
      d=4'b011;
      e=4'b0111;
      
      f=a&&b||c;
      
      g=~a;
      
      
      
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%d,\ng=%b",a,b,c,d,e,f,g);
    
    end 
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end
      
                
endmodule
