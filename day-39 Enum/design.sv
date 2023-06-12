
// Code your design here
// Code your design here
module m;
  
  enum {red,green,yellow,pink,black} colours;
  
 
  
  initial 
    
    begin 
 
        colours=colours.first();
      colours=colours.next();
      colours=colours.prev();
     #2 colours=colours.num();
    #2 colours=colours.last();
      for(int i=0;i<5;i++) 
        begin 
      $display("%s \t %d",colours.name,colours);
      colours=colours.next();
    end 
    end 
  
  initial
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule

