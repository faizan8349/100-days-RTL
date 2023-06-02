
// Code your design here
module function_code;
  
  reg [3:0] a,b,c;
  
  function [3:0] sum(input [3:0] a,b);
    
    return =a+b;
    
  endfunction 
  
  initial 
    begin 
      
      a=2; b=9;
     
      c=sum(a,b); //calling function sum
    
      $monitor("c=%d",c,$time);
    
    end 
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule 
    
