module Mod12Counter(t,q, clk, rst);
    output [3:0] q;
    input  clk, rst;
  input t[3:0];

    TF TF0(q[0], qBar0, t0, clk, rst),
       TF1(q[1], qBar1, t1, qBar0, rst),
       TF2(q[2], qBar2, t2, qBar1, rst),
       TF3(q[3], qBar3, t3, qBar2, rst);

    and and0(test, q[2], q[3]);
    or  or0 (rst, t, test);

endmodule
