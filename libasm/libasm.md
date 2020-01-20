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
