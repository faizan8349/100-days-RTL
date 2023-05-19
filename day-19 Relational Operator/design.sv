// Code your design here

// Code your design here
// Code your design here
// Code your design here
// Code your design here
// Code your design here
module operator();
  reg [3:0] a,b,c,d,e,f,g,h,i;
  
  
  initial 
    
    begin 
  
      a=4'b1110;
      
      b=4'b1111;
      
      c=4'b1010;
      
      d=4'b1011;
      
      e=4'b0111;
      
      f=  a > c;
   
      g = d < e;   
      
      h=  b >= a;
      
      i = b <= a; 
      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%d,h=%d,i=%d",a,b,c,d,e,f,g,h,i);
    
    end 
       
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule

