`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 09:28:51 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(clk);

    input wire clk;
    
    reg [4:0] counter;
    
    //STATES
    reg present, next;
    //reg states;
    parameter state_0 = 0; 
    parameter state_1 = 1; 
    
    initial begin
        present <= 0;
        next <= 0;
        counter <= 5'h00;
        
    end
    
    always@(posedge clk)begin
    
        present = next;
        
        case(present)
            
            state_0: begin
                
                counter[0] = !counter[0];
                next = state_1;
            end
            
            state_1: begin
                
                if (counter[0]) counter[1] <= !counter[1];
                else begin
                    if (counter[1]) counter[2] <= !counter[2];
                    else begin 
                        if (counter[2]) counter[3] <= !counter[3];  
                        else begin
                            if (counter[3]) counter[4] <= !counter[4];
                            //else counter <= 5'h00;
                        end 
                    end
                end
                next = state_0;
            end
        
        endcase
    end  
    
endmodule
