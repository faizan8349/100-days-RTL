// Code your design here
module operator();
  reg signed [3:0] a,b,c,d,e,f,g,h;
  
  
  initial 
    
    begin 
  
      a=4'b0110;
      b=4'b111x;
      c=4'b111x;
      d=4'b0011;
      e=4'b0111;
      
      f=(~a)&b|c ;
      
      g = a^d;
      
      h = a~^e;
      
      
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b",a,b,c,d,e,f,g,h);
    
    end
  
     initial
       begin 
       
         $dumpfile("dump.vcd");
         $dumpvars();
       end 
endmodule


