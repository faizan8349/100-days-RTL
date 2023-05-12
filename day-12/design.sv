// Code your design here
// Code your design her 
// Code your design here
// Code your design here
module JK_FLIPFLOP();
  
  reg j,k,q,qbar,x;
  
  always @(*)
  
    begin 
      
      case({j,k})
          2'b00: begin q=0; qbar=0; end 
          2'b01: begin q=0; qbar=1; end 
          2'b10: begin q=1; qbar=0; end 
          2'b11: begin  q=x; qbar=x; end  
          
      endcase
    
 end
 
  initial 
    $monitor("j=%d,k=%d,q=%d,qbar=%d",j,k,q,qbar);
    
  initial  
  begin 
   
      j=0; k=0;
   #2 j=0; k=1;
   #2 j=1; k=0;
   #2 j=1; k=1;
   
    #20 $finish();
 
  end 


initial 
  
  begin 
    
    $dumpfile("dump.vcd");
    $dumpvars();
    
  end 

endmodule 
