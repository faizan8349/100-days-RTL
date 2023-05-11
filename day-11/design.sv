// Code your design her 
// Code your design here
// Code your design here
module SR_FLIPFLOP();
  
  reg s,r,q,qbar;
  
  always @(*)
  
    begin 
      
      case({s,r})
          2'b00: begin q=0; qbar=0; end 
          2'b01: begin q=0; qbar=1; end 
          2'b10: begin q=1; qbar=0; end 
          2'b11: begin  q=1; qbar=1; end  
      endcase
    
 end
 
  initial 
     $monitor("s=%d,r=%d,q=%d,qbar=%d",s,r,q,qbar);
    
  initial  
  begin 
   
      s=0; r=0;
   #2 s=0; r=1;
   #2 s=1; r=0;
   #2 s=1; r=1;
    
    #20 $finish();
 
  end 


initial 
  
  begin 
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
  end 

endmodule 
