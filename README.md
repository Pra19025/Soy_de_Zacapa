# Verilog Documentation for `tt_um_chip_SP_measure_delay`

## Overview

This Verilog code defines a module named `tt_um_chip_SP_measure_delay` and two additional modules `INV` and `AND_2`. The primary module is intended to function as a ring oscillator. However, it's important to note that the synthesis for the ring oscillator is not done correctly. Despite this, the module can still be used to measure the delay of a NOT gate.

## Modules

### `tt_um_chip_SP_measure_delay`

#### Internal Signals

- **`W_1`, `W_2`, `W_3`**: Internal wires used for logic operations.
- **`EN`, `EN_2`**: Internal enable signals derived from `ui_in`.

#### Functionality

- The module attempts to create a ring oscillator using AND and NOT gates (`AND_2` and `INV` modules).
- The output of the ring oscillator is connected to the first three bits of `uo_out`.
- The module also sets `uio_out` and `uio_oe` to zero, effectively disabling bidirectional IOs.

### `INV`

#### Ports

- **`input A`**: Input signal.
- **`output B`**: Output signal.

#### Functionality

- Implements a NOT gate, inverting the input `A` to produce output `B`.

### `AND_2`

#### Ports

- **`input in1, in2`**: Input signals.
- **`output out`**: Output signal.

#### Functionality

- Implements a 2-input AND gate. The output `out` is the logical AND of `in1` and `in2`.

## Limitations

- The ring oscillator is not synthesized correctly, but the delay of a NOT gate (`INV` module) can still be measured.


## Notes

- The `ena`, `clk`, and `rst_n` signals are defined but not used in the current implementation. Future versions may utilize these signals for additional functionality.
- The `uio_in`, `uio_out`, and `uio_oe` signals are also not currently used.
- The `ui_in` signal's first two bits are used to control the ring oscillator.

---
