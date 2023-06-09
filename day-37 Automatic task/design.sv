// Code your design here
// Code your design here
module k;
  
  int A,B,C,D,E,F;
  task automatic a1( output [4:0]c,input [4:0] a,b);
    
    begin 
      
    c=a+b;
      
    end 
    
  endtask 
  
  initial 
    begin 
      A=10;
      B=2;
      a1(C,A,B);
      $display("C=%d",C);
    end 
  
  
  initial 
    
    begin 
    
      D=9;
      E=4;
      a1(F,D,E);
      
      $display("F=%d",F);
      
    end
  
  initial 
    
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
  
endmodule 

