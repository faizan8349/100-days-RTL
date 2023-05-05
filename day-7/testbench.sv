// or browse Examples
module tb();
  
  reg s0t,s1t;

  wire i0t,i1t,i2t,i3t;
  
  mux4 dut_inst(.s0(s0t),.s1(s1t),.i0(i0t),.i1(i1t),.i2(i2t),.i3(i3t));
  
  initial 
    
    begin 
    $monitor("s0t=%d,s1t=%D\ti0t%b,i1t=%b,i2t=%b,i3t=%b",s0t,s1t,i0t,i1t,i2t,i3t,$time);
      
  
       s0t=0; s1t=0;
   #2  s0t=0; s1t=1;
   #2  s0t=1; s1t=0;
   #2  s0t=1; s1t=1;
  

    end 
  
  initial
  
    begin 
       $dumpfile("dump.vcd");
       $dumpvars();
     end 

endmodule
  
