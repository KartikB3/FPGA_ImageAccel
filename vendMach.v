module vending_machine(
    input clk,
    input rst,
    input [1:0]in,
    output reg out,
    output reg[1:0] change
);
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;

reg[1:0] current_state,next_state;

always@(posedge clk)
    begin
        if(rst==1)
            begin
                current_state=0;
                next_state=0;
                change=2'b00;
            end
        else
            current_state=next_state;

        case(current_state)
            s0:
            if(in==0)
                begin
                    next_state=s0;
                    out=0;
                    change=2'b00;
                end
            else if(in==2'b01)
                begin
                    next_state=s1;
                    out=0;
                    change=2'b00;
                end
            else if(in==2'b10)
                begin
                    next_state=s2;
                    out=0;
                    change=2'b00;
                end

            s1:
            if(in==0)
                begin
                    next_state=s0;
                    out=0;
                    change=2'b01;
                end
            else if(in==2'b01)
                begin
                    next_state=s2;
                    out=0;
                    change=2'b00;
                end
            else if(in==2'b10)
                begin
                    next_state=s0;
                    out=1;
                    change=2'b00;
                end

            s2:
            if(in==0)
                begin
                    next_state=s0;
                    out=0;
                    change=2'b10;
                end
            else if(in==2'b01)
                begin
                    next_state=s0;
                    out=1;
                    change=2'b00;
                end
            else if(in==2'b10)
                begin
                    next_state=s0;
                    out=1;
                    change=2'b01;
                end
        endcase
    end
    endmodule 
    