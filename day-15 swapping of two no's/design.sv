// Code your design here

module m();
  
  reg [12:0] a=12;
  
  reg [12:0] b= 14;
  
  reg clk=0;

  always
  
    #10 clk=(~clk);
   
  always @(posedge clk)
  
    a<=b;
  
  always @(posedge clk) 
  
    begin
  
      b<=a;
  
      #11 $monitor("value of a=%d,b=%d,t=%d",a,b,$time);
 
    end 
    
  initial 
    
    begin
  
      #100 $finish();
    
    end 
  
  initial 

    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule 
    

