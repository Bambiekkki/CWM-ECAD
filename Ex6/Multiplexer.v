module mux(
      input a,b,sel,
      output out);
   
      wire out;
               
      assign out = sel ? b : a;
      
endmodule
