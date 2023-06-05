// Code your design here
  module for_loop();
  reg [3:0] b,c;
 integer a;
  
  initial 
    begin 
      
      c=1;
      
      
      for (a=0; a<20; a++)
      
        begin 
          b=c++;
          
          $display("a=%d,b=%d,c=%d",a,b,c);
          
        end 
    
    end 
    
    initial 
      
      begin 
        
        $dumpfile("dump.vcd");
        $dumpvars();
        
      end 
    
      endmodule



