
// Code your design here
module m;
  reg[3:0] e,a,b,c,d;
  
  initial 
  
    begin 
      a = 4'b0011;
     b = 4'b0011;  
      c = 4'b0101; 
      d = b+c;
     
    e = a+b;
  
      $display("a=%d,b=%d,c=%d,d=%d,e=%b",a,b,c,d,e,$time);   
    
    end 

  
  initial
    begin 
      
 #0  a=2;
  #0  b=6;
    
      e=a+b;
      
      $monitor("a=%d,b=%d,c=%d,d=%d,e=%d",a,b,c,d,e,$time);   
    
    end 
 
  initial 
  
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
  
endmodule 

