// Code your design here

// Code your design here
module m;
  reg [3:0] c,f;
  function  automatic [3:0] a2(input [3:0] a,b);
    
    begin 
    
    a2  = b+a;
    
      $display("a2=%d",a2);
 
    end 
    
  endfunction 
  
  
  initial 
    
    begin 
    
      c= a2(4,3);
     
      $display("c=%d",c);
    
    end 
  
  initial 
    
    begin 
    
     // g=13;
      
      //h=10;
      
      f=a2(7,3);
      
      $display("f=%d",f);
 
    end 
  
  initial 
  
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule 
