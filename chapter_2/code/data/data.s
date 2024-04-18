section .data
	status_code dd 5
	exit_system_call dd 1
	make_system_call_magic_number dd 80h

section .text

global _start

_start:
	; note, `mov eax, [exit_system_call]` means store the value at the memory address of ret_value
	; `mov eax, exit_system_call would store the memory address of ret_value in eax
  ; we could also use the command `mov eax, 1` and use immediate mode addressing
	mov eax, [exit_system_call] ; linux looks in the ax register to determine what system call
                              ; to make, 1 <-> exit
	mov ebx, [status_code]
 
  ; `int` stands for interrupt
  ; 80h --  Wakeup Linux Kernel and make system call 
  ; (try to find a way to store this value in a variable)
	int 80h
