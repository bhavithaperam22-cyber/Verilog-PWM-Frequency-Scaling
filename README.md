# PWM Generation and Frequency Scaling Using Verilog

## Overview

This project implements a digital hardware design for clock frequency scaling and Pulse Width Modulation (PWM) generation using Verilog HDL.

The design uses a 50 MHz input clock, generates a scaled 3.125 MHz clock, and uses the scaled clock for PWM generation and lower-frequency clock generation. The PWM output is controlled using a 4-bit duty-cycle input.

The project follows a modular hardware design approach and includes source modules, top-level integration, and a Verilog testbench for functional verification.

---

## Features

- Clock frequency scaling from 50 MHz to 3.125 MHz
- Programmable PWM generation
- 4-bit duty-cycle control
- Generation of an approximately 195 kHz clock output
- Modular Verilog HDL implementation
- Hierarchical module integration
- Testbench-based functional verification
- Intel Quartus Prime project support

---

## System Description

The complete design consists of two primary functional blocks:

1. Frequency Scaling Module
2. PWM Generation Module

The system receives a 50 MHz input clock and produces a scaled clock signal. The scaled clock is then used by the PWM generator to produce:

- A PWM output with programmable duty cycle
- An approximately 195 kHz clock output

### Signal Flow

```text
                 +----------------------+
                 |     50 MHz Clock     |
                 +----------+-----------+
                            |
                            v
                 +----------------------+
                 |  Frequency Scaling   |
                 +----------+-----------+
                            |
                            v
                      3.125 MHz Clock
                            |
                 +----------+-----------+
                 |                      |
                 v                      v
       +------------------+    +------------------+
       |  PWM Generation  |    | Clock Generation |
       +--------+---------+    +--------+---------+
                |                       |
                v                       v
          PWM Signal              ~195 kHz Clock
