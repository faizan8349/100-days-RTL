module mux4 (s0,s1,i0,i1,i2,i3);
 
  input s0,s1;
  
  output i0,i1,i2,i3;
 
  not (w1,s0);
  not (w2,s1);
  and (i0,w1,w2);
  and (i1,s1,w1);
  and (i2,w2,s0);
  and (i3,s0,s1);

endmodule 
