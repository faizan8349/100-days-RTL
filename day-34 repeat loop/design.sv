// Code your design here

// Code your design here
module repeat_loop();

  reg [3:0] b,c;
 
  integer a;
  
  initial 
  
    begin 

      c=1;
      a=0;
    
      repeat (10)
      
        begin 
          b=c++;
          a=a+2;
          $display("a=%d,b=%d,c=%d",a,b,c);
          
        end 
    
    end 
    
  initial 
  
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule
