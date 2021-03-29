.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data 
  
inputStr BYTE "A", "B", "C", "D", "E", "F", "G","H" 

.code 
main proc
	mov esi, 0
	mov edi, 0
	mov eax, 0
	mov ebx, 0
	mov esi, OFFSET inputStr 
	mov edi, esi 
	add edi, TYPE inputStr 
	mov ecx, LENGTHOF inputStr 
	sub ecx, 1
	Loop_arr:
	mov al, [esi]
	mov bl, [edi]
	cmp al,bl 
	jle SKIP_SWITCH
	xchg al,bl 
	SKIP_SWITCH:
	mov [esi], al
	mov [edi], bl
	add esi, TYPE inputStr
	add edi, TYPE inputStr
	loop Loop_arr

INVOKE ExitProcess, 0
main ENDP
end main
