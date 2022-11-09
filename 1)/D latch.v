
//d LATCH
module dlatchmod(e, d, q);
input e;
input d;
output q;
reg q;
always @(e or d)
begin
if (e)
q<=d;
end
endmodule

testbench
module dlatcht_b;
reg e;
reg d;
wire q;
dlatchmod uut (.e(e),.d(d),.q(q) );
initial begin
d = 0;
e = 0;
end
always #3 e=~e;
always #5 d=~d;
initial                     #1000 $stop;
endmodule
