        // Code your design here
module mux4x1;
  
  reg [2:0]   s0,s1,i0,i1,i2,i3,y;

      
  assign y=s0?(s1?i3:i2):(s1?i1:i0);
      
  
  
  initial 
    
    $monitor("s0=%0D,s1=%0D,y=%0d",s0,s1,y,$time);
  
  
  initial 
  
    begin
    
      i0=0; i1=1; i2=2; i3=3;
    
    end 
  
  initial 
  
    begin
     
      
        s0=0; s1=0;
   #2   s0=0; s1=1;
   #2   s0=1; s1=0;
   #2   s0=1; s1=1;
      
      
      #10  $finish();
      
      
    end 
  
  initial 
  
    begin 
      
      $dumpfile("dum[p.vcd");
      $dumpvars();
      
    end 
  
      
  
endmodule 
    
