// Code your design here

// Code your design he
// Code your design here
module task_t1;
  
  int A,B,C;
  task a1( output [4:0]c,input [4:0] a,b);
    
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
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
  
  endmodule 
      
