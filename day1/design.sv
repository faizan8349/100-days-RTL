
// Code your design here
module m();
  
  reg a,b,sum,carry;
  
  always @(*)
    
    begin 
      
      sum =a^b;
      carry =a&b;
  end 
  
  
 initial 
    #20 $finish();
 
  initial 
    begin 
    #2  a=0; b=0;
      #2 a=0; b=1;
      #2 a=1; b=0;
      #2 a=1; b=1;
    end
  
  initial 
    $monitor("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
 
 initial 
   begin 
    $dumpfile(dump.vcd);
    $dumpvars();
   end 
 
endmodule 

