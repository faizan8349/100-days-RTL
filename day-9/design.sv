//  D latch 

// Code your design here
// Code your design here
module d_latch();
  reg[2:0] d,q,qbar;
  
  always @(*)
    begin 
      
      case({d})
          1'b0: begin q=0; qbar=1; end 
        1'b1: begin  q=1; qbar=0; end  
      endcase
    
 end
 
  initial 
    $monitor("d=%d,q=%d,qbar=%d",d,q,qbar);
    
  initial  
  begin 
   
   #2 d=0; 
   #2 d=1;
  
   #20 $finish();
  end 
endmodule

