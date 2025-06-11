# 🔀 Selection Logic Circuits in Verilog – Part 3

This repository includes five Verilog projects focused on **selection and encoding logic**. These modules are foundational for combinational circuit design and are ideal for digital design learners, VLSI engineers, and hardware developers.

---

## 📘 Projects Included

| No. | Project                               | Description                                           |
|-----|----------------------------------------|-------------------------------------------------------|
| 11  | 8x1 Multiplexer                        | Selects one input from 8 using 3-bit selector         |
| 12  | 8x1 Multiplexer using 2x1 Multiplexers | Built using cascaded 2x1 multiplexers                |
| 13  | 1x8 Demultiplexer                      | Routes a single input to one of 8 outputs             |
| 14  | 8-to-3 Encoder                         | Encodes 8 inputs to a 3-bit output                    |
| 15  | 4-to-2 Priority Encoder                | Gives output for highest priority input               |

---

## 🔧 Circuit Details

### 1️⃣1️⃣ 8x1 Multiplexer
- **Inputs**: `in[7:0]`, `sel[2:0]`
- **Output**: `out`
- **Logic**: Selects one of 8 inputs using 3-bit select line

📷 **Waveform Output**  
![8x1 MUX](assets/mux8x1_waveform.png)

---

### 1️⃣2️⃣ 8x1 Multiplexer using 2x1 MUX
- **Implementation**: Built hierarchically using 2:1 multiplexers
- **Advantage**: Demonstrates modular digital design

📷 **Waveform Output**  
![8x1 using 2x1 MUX](assets/mux8x1_using_2x1_waveform.png)

---

### 1️⃣3️⃣ 1x8 Demultiplexer
- **Inputs**: `in`, `en`, `sel[2:0]`
- **Outputs**: `out[7:0]`
- **Logic**: Directs the input to one of the outputs based on selector

📷 **Waveform Output**  
![1x8 Demux](assets/demux1x8_waveform.png)

---

### 1️⃣4️⃣ 8-to-3 Encoder
- **Input**: `in[7:0]` (only one high at a time)
- **Output**: `out[2:0]`
- **Logic**: Outputs binary code of active input

📷 **Waveform Output**  
![8-to-3 Encoder](assets/encoder8to3_waveform.png)

---

### 1️⃣5️⃣ 4-to-2 Priority Encoder
- **Input**: `in[3:0]`
- **Output**: `out[1:0]`
- **Logic**: Outputs binary code of highest-priority active input

📷 **Waveform Output**  
![Priority Encoder](assets/priority_encoder4to2_waveform.png)

---

## ▶️ How to Simulate

Use tools like **Icarus Verilog**, **ModelSim**, or **Vivado**.

### Example with Icarus Verilog
```bash
iverilog -o mux8x1_test verilog/mux8x1.v testbench/tb_mux8x1.v
vvp mux8x1_test


