module Hierarchy();
 
  m1 inst_m1();
  
   
       defparam inst_m1.inst_m2.inst_m3.inst_m4.l =6;
     
endmodule


module m1;

  m2 inst_m2();

endmodule 


module m2;

  m3 inst_m3();
  
endmodule 


module m3;

  m4 inst_m4();

endmodule 

module m4;

  reg[4:0] a,b;
 
  parameter l=8;
   
  initial 
    
     begin 
     
       $display("l=%d",l);
   
     end 
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
endmodule 
