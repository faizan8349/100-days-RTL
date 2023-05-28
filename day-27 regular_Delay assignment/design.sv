// Code your design here
module regular_delay;
  
  reg[3:0] a,b,c,d;
  
  initial 
  
    begin 
    #10  a=4'b0011;
    #10  b=4'b0011;
    #10  c=4'b0101;
      
     #2 d=b*c;
    end 
  
  initial
    
    begin 
      $monitor ("a=%d,b=%d,c=%d,d=%d",a,b,c,d,$time);   
    end 
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule 

