# clock-gating-using-dual-latch

**CLOCK GATING USING DUAL LATCH:**

Clock gating is a technique used in digital design to reduce dynamic power consumption by 
selectively disabling the clock signal to parts of a circuit when they are not in use. 

The primary aim is to minimize the unnecessary switching of flip-flops and combinational logic, as clock signals are one of the most power-hungry elements in a digital system. 

The technique involves using a control signal (like an enable or gating signal) that gates the clock signal based on certain conditions. 

For example, if a module is not needed in the current operation cycle, the clock signal to that module is disabled, and no state transitions occur within the flip-flops of that module.

**Using two latches helps in:**

**Glitch-Free Clock Gating:** Ensures that partial enable signals or glitches do not cause unintended behavior.

**Metastability Reduction:** Two-stage latching reduces chances of metastability when transitioning between states.

This dual-latch clock gating technique effectively disables the clock when not needed, leading to significant power savings in large digital designs.
