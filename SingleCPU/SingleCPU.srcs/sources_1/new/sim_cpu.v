`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/22 00:59:34
// Design Name: 
// Module Name: sim_cpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_cpu(

    );
    reg reset;
    reg clk;
    
    wire [7:0] addr_4;
    wire [7:0] new_addr_4;
    wire [7:0] rs_4;
    wire [7:0] data1_4;
    wire [7:0] data2_4;
    wire [7:0] rt_4;
    wire [7:0] result_4;
    wire [7:0] DB_4;
    
    SingleCPU cpu(
        .clk(clk),
        .reset(reset),
        .addr_4(addr_4),
        .new_addr_4(new_addr_4),
        .rs_4(rs_4),
        .data1_4(data1_4),
        .data2_4(data2_4),
        .rt_4(rt_4),
        .result_4(result_4),
        .DB_4(DB_4)
    );
    initial
    begin
        clk = 1;
        reset = 1;
        #20 reset = 0;
        #20 reset = 1;
        
        forever #20 clk = ~clk;
        #800 $stop;
    end
endmodule
