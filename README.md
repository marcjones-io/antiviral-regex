# antiviral-regex
Anti-virus regular expressions for catching EAX/EBX interrupt hooking & malicious jumps to viral code

### about:
Computer viruses have been found to attempt jumps to their main body by inserting "push" statement (that holds the location of malicious code) right before the end of a function that returns an arbitrary value. In doing so the returned value is actually a memory address of the viral code and popped right onto the stack. The viral code can then execute and return the expected value to the original program. Further, viruses have been known to take advantage of system interrupts to gain an edge on anti-viral (AV) safe guards. This program uses "fast lexical analyzer" (FLEX) and regular expressions to detect these types of takeover attempts. The regular expressions check for push/ret combinations in assembly, along with any blatant attempt to hook interrupts to the EAX or EBX registers. Clearly there are more registers to account for, this code can serve as an example to build upon.

### instructions:
Included is the lex file "dump.txt", a makefile, and an assembly dump of a contaminated program. First run make, then use the generated program (should be "a.out") to read the dump text. If make did not compile, be sure to have FLEX installed on your system. Read through the dump text by piping it into the program: "cat dump.txt | a.out".

* note - this build is intended for OS X, if you are running Linux/Ubuntu change "-ll" to "-lfl" in the makefile 

### notes:
For more information on the FLEX:
https://github.com/westes/flex
