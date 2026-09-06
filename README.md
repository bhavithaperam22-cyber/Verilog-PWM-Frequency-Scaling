# PWM Generation and Frequency Scaling Using Verilog

## Overview

This project implements a digital hardware design for clock frequency scaling and programmable Pulse Width Modulation (PWM) generation using Verilog HDL.

The design accepts a 50 MHz input clock and generates a lower-frequency clock of 3.125 MHz. This scaled clock is subsequently used by the PWM generation module to produce two outputs:

- A programmable PWM signal controlled by a 4-bit duty-cycle input
- A 195.3125 kHz clock signal

The project is implemented using a modular Verilog design methodology, where frequency scaling and PWM generation are developed as separate functional blocks and integrated through a top-level hardware module. The design also includes a Verilog testbench for simulation-based functional verification.

The project demonstrates fundamental FPGA and digital design concepts including clock division, counter-based timing, PWM generation, hierarchical module integration, and HDL-based verification.

---

## Design Objectives

The primary objectives of the project are:

- Generate a lower-frequency clock from a 50 MHz input clock
- Produce a 3.125 MHz scaled clock for subsequent digital processing
- Generate a PWM waveform with programmable duty-cycle control
- Generate a 195.3125 kHz clock from the scaled clock
- Implement the design using synthesizable Verilog HDL
- Integrate multiple hardware modules into a complete top-level design
- Verify the functional behaviour using a Verilog testbench

---

## Functional Description

The design consists of a frequency scaling stage followed by a PWM generation stage.

The frequency scaling module receives the 50 MHz system clock and produces a 3.125 MHz clock. This clock is supplied to the PWM generator, which uses an internal 4-bit counter to control both the PWM output and the generation of the 195.3125 kHz clock.

The duty cycle of the PWM output is controlled using a 4-bit input. The counter value is continuously compared with the selected duty-cycle value to determine whether the PWM output remains HIGH or LOW during each count interval.

The complete design is integrated through a top-level Verilog module.

---

# Design Specifications

| Parameter | Value |
|---|---|
| Input Clock Frequency | 50 MHz |
| Scaled Clock Frequency | 3.125 MHz |
| Generated Clock Frequency | 195.3125 kHz |
| PWM Resolution | 4-bit |
| PWM Counter Range | 0 to 15 |
| Duty-Cycle Control | 16 discrete levels |
| HDL | Verilog |
| Design Environment | Intel Quartus Prime |

---

# Module Description

## 1. Frequency Scaling Module

**Source File:** `frequency_scaling.v`

The frequency scaling module is responsible for generating a 3.125 MHz clock from the 50 MHz system clock.

Clock scaling is an essential operation in FPGA and digital systems because different functional blocks may require different operating frequencies. Instead of using the original high-frequency clock for all operations, a divided clock can be generated to provide the timing required by a specific subsystem.

The module produces:

```text
Input Clock  : 50 MHz
Output Clock : 3.125 MHz
