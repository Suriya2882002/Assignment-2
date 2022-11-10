module ShiftRegister_SIPO(C, SI, PO);
input C,SI;
output [7:0] PO;
reg [7:0] tmp;
always @(posedge C)
begin
tmp = {tmp[6:0], SI};
end
assign PO = tmp;
endmodule

