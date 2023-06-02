// Code your design here

module while_loop;
  
  reg [3:0] b,c;
 
  integer a;
  
  initial 
    begin 
      
      a=0;
      c=8;
      
      while(a<13 )
  
        begin 
          b=c++;
          
          $display("a=%d,b=%d,c=%d",a,b,c);
          a=a+1;
        end 
  
    end 

  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
  
endmodule
