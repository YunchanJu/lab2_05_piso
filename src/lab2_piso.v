`timescale 1ns/1ps
module lab2_piso(input wire clk,rst,button,input wire [7:0] sw,output wire [7:0] led);
wire reset,press; wire [7:0] switches;
input_frontend inputs(clk,rst,button,sw,reset,press,switches);
wire [3:0] value; wire serial_out; piso4 core(clk,reset,press && switches[0],press && !switches[0],switches[7:4],serial_out,value); assign led={value,3'b0,serial_out};
endmodule
