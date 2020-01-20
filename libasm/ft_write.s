_ft_write:
    mov		eax, 0x2000004; 0x20000004: address of write function
    syscall	; or int 0x80
    cmp		ebx, 0
    je		.exit_ok

.exit_error:
    mov		eax, -1

.exit_ok:
    ret
