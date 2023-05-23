// Code your design here

module shift_operator();
  reg signed [3:0] a,b,c,d,e,f,g,h,i;
  
  
  initial 
    
    begin 
  
      a=4'b1111;
      b=4'b111x;
      c=4'bxxxx;
      d=4'b1011;
      e=4'b0111;
      
      f=b<<2 ;
      
      g= a>>2;
      
      h= d>>>2;
      i= e<<<2;
      
      
      
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,i=%b",a,b,c,d,e,f,g,h,i);
    
    end 
                
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule


