segment .data
msg_error_division db "****Error de ejecucion: Division por cero.", 0
msg_error_vector db "****Error de ejecucion: Indice fuera de rango.", 0
segment .bss
	__esp resd 1
	_a resd 1
	_b resd 1
	_x resd 1
	_y resd 1
segment .text
	global main
	extern scan_int, print_int, scan_float, print_float
	extern scan_boolean, print_boolean
	extern print_endofline, print_blank, print_string
	extern alfa_malloc, alfa_free, ld_float
_suma:
	push ebp
	mov ebp, esp
	sub esp, 4*1
	lea eax, [ebp+12]
	push dword [eax]
	lea eax, [ebp+8]
	push dword [eax]
	pop dword edx
	pop dword eax
	add eax, edx
	push dword eax
	pop dword eax
	mov esp, ebp
	pop ebp
	ret

main:
	mov dword [__esp], esp
	push dword  _a 