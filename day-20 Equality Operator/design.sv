// Code your design here
module operator();
  reg [3:0] a,b,c,d,e,f,g,h,i;
  
  
  initial 
    
    begin 
  
      a=4'b1110;
      b=4'b111x;
      c=4'b111x;
      d=4'b011;
      e=4'b0111;
      
      f = a!=e!==b ;
      g= a==e;
      h= b===c;
      i= d!==e;
      
      
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,i=%b",a,b,c,d,e,f,g,h,i);
    
    end 
         
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end
  
endmodule

