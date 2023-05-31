// Code your design here
// Code your design here
module named_event;
  
  reg [3:0] a,b,c;
  
  event l;
  
  reg clk=0;

  always 
   #1 clk=~clk;
  
  initial 
    
    begin 
      
      -> l;
      
      $display("l become triggered ");
      
    end 
  
      
  always@(posedge clk)
  
    begin 
      
    b=c+a;
     
      $display("\nafter l become triggered b=%d",b);
    
    end 
  
  initial 
   
    begin 
      
     #1 a=5; c=4;
    
    end 
  
  initial
    
    begin
  
      #10 $finish();  
    
    end
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule 


