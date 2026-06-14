# Traffic-Light-Controller-FSM

# 🚦 Traffic Light Controller using Verilog FSM

## 📌 Overview

This project implements a Traffic Light Controller using a Finite State Machine (FSM) in Verilog HDL.

The controller cycles through three traffic light states:

RED → GREEN → YELLOW → RED

The design uses a clock-driven FSM with a counter to control the duration of each state.

---

## 🛠 Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

---

## 📊 State Encoding

| State  | Binary |
| ------ | ------ |
| RED    | 00     |
| GREEN  | 01     |
| YELLOW | 10     |

---

## 🔄 State Transitions

RED (5 Counts)
↓
GREEN (5 Counts)
↓
YELLOW (2 Counts)
↓
RED

---

## 📁 Project Files

* traffic.v → Traffic Light Controller Design
* traffic_tb.v → Testbench
* waveform.png → Simulation Waveform Screenshot

---

## ▶️ Simulation Commands

Compile:

iverilog -o traffic traffic.v traffic_tb.v

Run Simulation:

vvp traffic

Open Waveform:

gtkwave traffic.vcd

---

## 📈 Waveform Verification

The waveform verifies:

* Clock Generation
* Reset Operation
* Counter Functionality
* FSM State Transitions
* Traffic Light Output

Observed Sequence:

00 → 01 → 10 → 00

which corresponds to:

RED → GREEN → YELLOW → RED

---

## 🎯 Learning Outcomes

* Finite State Machine (FSM) Design
* Sequential Logic Design
* Clock and Reset Handling
* Verilog HDL Coding
* Testbench Development
* Waveform Analysis using GTKWave

---

## 👨‍💻 Author

Kiran Kumari

B.Tech Student | Verilog & Digital Design Enthusiast
