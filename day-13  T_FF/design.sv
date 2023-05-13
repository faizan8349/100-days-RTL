// Code your design here
module T_FF();
  
  reg t,reset,q;
  
  reg clk=0;
  
  always
 
    begin 
      
    #2 clk= ~clk;
  
    end 
  
  always@(posedge clk, reset)
    if(t)
     q=~q;
    else 
     q=q;

  initial 
    
    begin 
  q=1;
      
  #2    reset=0;  t=0;
       
    #2  reset=1;  t=1;
    

  
      $monitor("reset=%D,t=%D q=%d",reset,t,q,$time);
      
      #20 $finish();
      
    end 
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
  
      $dumpvars();
      
    end 
  
  
endmodule 
