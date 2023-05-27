
module Conditinal_operator();
  
  reg [3:0] f,s0,s1,i0,i1,i2,i3;
  
  
  initial 
    
    begin 
       s0=0; s1=0;
#2     s0=0; s1=1;
#2     s0=1; s1=0;
#2     s0=1; s1=1;

      
  
      i0=4'b0111;
      i1=4'b1111;
      i2=4'b1010;
      i3=4'b1011;
      
      
      f=s0?(s1?i2:i3):(s1?i1:i0);
      
      
      
      $monitor("s0=%b,s1=%b,i0=%b,i1=%b,i2=%b,i3=%b,\nf=%b",s0,s1,i0,i1,i2,i3,f
  );
    
    end 
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end
  
endmodule

