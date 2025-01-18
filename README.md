# Integer Overflow in Assembly Address Calculation

This repository demonstrates a common error in assembly programming: integer overflow in address calculations. The `bug.asm` file contains code that is vulnerable to this issue. The `bugSolution.asm` file provides a corrected version with proper bounds checking.

The core problem lies in the line:

```assembly
mov eax, [ebx+ecx*4]
```

If `ecx` is too large, the multiplication `ecx*4` can overflow, leading to an incorrect memory address and potential crashes or unpredictable behavior.  The solution implements range checking before performing the calculation.

This example highlights the importance of careful memory management and bounds checking in low-level programming.