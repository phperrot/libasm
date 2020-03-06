#######################################################
######											#######
######	https://github.com/alamorth42/libasm42	#######
######	https://github.com/42sam/libc-asm		#######
#######################################################

######REGISTRE

RDI = 1 er ARGUMENT d'une fonction
RSI = 2eme
RDX = 3 eme
RAX -> ce que return une fonction en assembleur
RCX registre 64 bits
	--> look slide 10: http://www.lacl.fr/tan/asm

CL = un registre

BYTE[] -> LE BYTE pointe

######APPELS SYSTEME (SYSCALL)

pour le read et le write se sont des appels systeme http://syscalls.kernelgrok.com
0x000003 = read => add 2000000?
0x000004 = write

######JUMPS
jz loop: if condition is met (i.e = 0), jump to loop
Example:
test eax, eax            ; test if eax=0
jz   short loc_402B13    ; if condition is met, jump to loc_402B13

######OPERATIONS
sub: substraction
Example:
sub eax, 0x10;Substract 0x10 from EAX.
cmp: comparison
Example:
cmp al, bh 		; if al == bh, then result is 0, otherwise result ≠0

######PUSH AND POP
"The Stack" is a frequently-used area of memory designed for functions to use as temporary storage.  This is normally where you store values while calling another function: you can't store values in the scratch registers, because the function could change them.

The easiest and most common way to use the stack is with the dedicated "push" and "pop" instructions.

"push" stores a constant or 64-bit register out onto the stack.  The 64-bit registers are the ones like "rax" or "r8", not the 32-bit registers like "eax" or "r8d".  ("push eax" gives an error "instruction not supported in 64-bit mode"; use "push rax" instead.)
"pop" retrieves the last value pushed from the stack.  Everything you push, you MUST pop again at some point afterwards, or your code will crash almost immediately!
For example, this loads 3 into rax and returns.  It's a kinda roundabout way to return a 3, but it lets you use rax for something else until you need it.
push 3
pop rax
ret

######OPERATION on REGISTERS 
https://beta.hackndo.com/assembly-basics/

