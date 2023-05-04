// Code your testbench here
// or browse Examples
module tb();
  
  reg at,bt;
 
  wire y0t,y1t,y2t,y3t;
  
  decoder dut_inst(.a(at),.b(bt),.y0(y0t),.y1(y1t),.y2(y2t),.y3(y3t));
  
  initial 
    
    begin 
  
      $monitor ("at=%b,bt=%b\ty0t=%b,y1t=%b,y2t=%b,y3t=%b",at,bt,y0t,y1t,y2t,y3t,$time);
   
       at=0; bt=0;
   #2  at=0; bt=1;
   #2  at=1; bt=0;
   #4  at=1; bt=1;

    end 

  initial
  
    
    begin 
    
      $dumpfile("dump.vcd");
       $dumpvars();
 
     
    end 
  
endmodule
       
 

