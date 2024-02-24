
# Entity: APB_Slave 
- **File**: APB_Slave.v

## Diagram
![Diagram](APB_Slave.svg "Diagram")
## Ports

| Port name  | Direction | Type        | Description |
| ---------- | --------- | ----------- | ----------- |
| pclk       | input     |             |             |
| preset_n   | input     |             |             |
| psel       | input     | [6:0]       |             |
| penable    | input     |             |             |
| pwrite     | input     |             |             |
| paddr      | input     | wire[31:0]  |             |
| pwdata     | input     | wire[31:0]  |             |
| pwdata_out | output    | wire [31:0] |             |
| prdata_out | output    | wire [31:0] |             |
| dv         | output    |             |             |
| pready     | output    |             |             |

## Signals

| Name                  | Type       | Description |
| --------------------- | ---------- | ----------- |
| pready_counter = 8'b0 | reg [7:0]  |             |
| s_state = 2'b00       | reg [1:0]  |             |
| data_latch            | reg [31:0] |             |
| temp                  | reg [31:0] |             |

## Constants

| Name  | Type | Value | Description |
| ----- | ---- | ----- | ----------- |
| IDLE  |      | 2'b00 |             |
| WRITE |      | 2'b01 |             |
| READ  |      | 2'b10 |             |

## Processes
- unnamed: ( @(posedge pclk or negedge preset_n) )
  - **Type:** always

## State machines

![Diagram_state_machine_0]( fsm_APB_Slave_00.svg "Diagram")