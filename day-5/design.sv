//4 to 2 Encoder by behavioral 


// Code your design here
// Code your design here
// Code your design here
// Code your design here
// Code your design here

module m();

  reg  y0,y1,y2,y3;
  reg    a,b;
  
  always@(*)
  begin 
    a<=y2+y3; 
    b<=y1+y3;
    end 
      initial
       #20 $finish();
      initial 
        $monitor("a=%b,b=%b",a,b);
  initial 
    begin
         y0=1; y1=0; y2=0; y3=0;
     #2  y0=0; y1=1; y2=0; y3=0;
     #2  y0=0; y1=0; y2=1; y3=0;
     #2  y0=0; y1=0; y2=0; y3=1;
    end 
      
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
      
endmodule

   
  


    
