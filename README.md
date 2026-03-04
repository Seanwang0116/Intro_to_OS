# Intro. to Operating Systems - Course Projects 

**Instructor:** Prof. Shuo-Han Chen
**Platform:** Nachos (Not Another Completely Heuristic Operating System)

## Repository Overview
This repository contains the implementation of core Operating System components within the **Nachos** kernel. The projects progress from basic system calls to advanced memory management and custom CPU scheduling.

---

## Project Modules

### HW01: System Call Implementation
* **Goal**: Understand the transition between **User Mode** and **Kernel Mode**.
* **Key Tasks**: 
    * Traced the `Halt()` system call execution path.
    * Implemented **Console I/O** (e.g., `PrintInt`) for user-to-system interaction.
    * Developed **File I/O** system calls (`Create`, `Open`, `Read`, `Write`, `Close`) to manage the Nachos file system.

### HW02: Memory Management & Page Tables
* **Goal**: Implement memory virtualization and support multi-processing.
* **Key Tasks**: 
    * Implemented a **Free Frame List** to manage physical memory allocation.
    * Developed a **Page Table** mechanism to provide address translation and isolation for multiple processes.
    * Enabled the kernel to handle multiple user programs running concurrently.

### HW03: Thread Lifecycle & State Transitions
* **Goal**: Analyze and trace the internal states of threads and processes.
* **Key Tasks**: 
    * Traced 6 critical code paths in the Nachos scheduler:
        1. `New -> Ready`: Process creation and forking.
        2. `Running -> Ready`: Yielding and interrupts.
        3. `Running -> Waiting`: I/O or event blocking.
        4. `Waiting -> Ready`: I/O completion.
        5. `Running -> Terminated`: Process exit.
        6. `Ready -> Running`: Scheduler dispatching via `SWITCH`.



### HW04: Priority-Based CPU Scheduling
* **Goal**: Replace the default Round-Robin scheduler with a Priority-based strategy.
* **Key Tasks**: 
    * Modified the `Ready List` to function as a **Priority Queue**.
    * Implemented **Non-Preemptive Priority Scheduling**.
    * Adjusted kernel ticks and console timing to verify scheduling correctness via debug flags.

---

## Technical Stack
* **Language**: C++ (Kernel), C (User Programs)
* **Architecture**: MIPS (Simulated by Nachos)
* **Build System**: `make`, Cross-compiler for MIPS
* **Environment**: Linux / WSL

## How to Build & Run
To compile and run a specific test case (example for HW02):
```bash
cd code/build.linux
make clean
make
./nachos -e ../test/mp2_test1
