module traffic_light(
    input clk,
    input reset,
    output reg [1:0] light,
    output reg [1:0] state,
    output reg [3:0] count
);

// State definitions
parameter RED    = 2'b00;
parameter GREEN  = 2'b01;
parameter YELLOW = 2'b10;

// FSM Logic
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= RED;
        count <= 0;
    end
    else
    begin
        count <= count + 1;

        case(state)

            RED:
            begin
                if(count == 5)
                begin
                    state <= GREEN;
                    count <= 0;
                end
            end

            GREEN:
            begin
                if(count == 5)
                begin
                    state <= YELLOW;
                    count <= 0;
                end
            end

            YELLOW:
            begin
                if(count == 2)
                begin
                    state <= RED;
                    count <= 0;
                end
            end

            default:
            begin
                state <= RED;
                count <= 0;
            end

        endcase
    end
end

// Output Logic
always @(*)
begin
    case(state)
        RED:    light = 2'b00;
        GREEN:  light = 2'b01;
        YELLOW: light = 2'b10;
        default: light = 2'b00;
    endcase
end

endmodule