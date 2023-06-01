// Code your design here
// Code your design here
// Code your design here
module event_or;
  
  reg [3:0]a,b,c1,c;
  
  event l;
  
  reg clk=0;

  always 
   #1 clk=~clk;
  
  always@(posedge clk or  l)
  
    fork
      
    begin 
      
      #10;
      
      
       b=c+a;
    
    
    end 
  
  
  begin
    
    repeat (2)

      begin
        
    #20;
    
    c1=a+b;
    
        $display("b=%D,c1=%d",b,c1,$time);
    
      end 
  end 
  
    join
  
  initial 
   
    begin 
     #1 a=5; c=4;
    end 
  
  initial
    begin
      $monitor("b=%b",b,$time);
    #100 $finish();  
    end
  
      initial 
        
        begin 
          
          $dumpfile ("dump.vcd");
          $dumpvars();
          
        end 
      
endmodule 


