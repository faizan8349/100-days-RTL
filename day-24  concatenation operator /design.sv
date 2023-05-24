module concatenation_operator();
  
  reg [2:0] a,b;
  reg [5:0] c;
  
  initial 
    begin 
      a=110;
      b=101;
      
      c=({a,b});
  
      $display("a=%b,b=%b,\n c=%b",a,b,c);
      
    end 
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule 
      
