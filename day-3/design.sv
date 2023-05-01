module half_subtractor();
  
  reg a,b,d,borrow,a_bar;
  
    always@(*)
    
    begin 
      
     a_bar=~a;
      
      d = a^b;
      borrow =a_bar&b;
   
    end 
  
   initial 
    begin 
      $monitor("a=%b,b=%b,d=%b,borrow=%b",a,b,d,borrow);
   
     #1   a=0;  b=0;
     #1   a=0;  b=1;
     #1   a=1;  b=0;
     #1   a=1;  b=1;
  end 
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule 
