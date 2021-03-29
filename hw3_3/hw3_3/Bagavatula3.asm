.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
qVal QWORD 0506030740800102h
.code
main PROC
	mov eax,0
	mov ebx,0
	mov ecx,0
	mov edx,0
	mov ax,WORD PTR[qVal+6]  
	mov bx,WORD PTR[qVal+4]  
	mov cx,WORD PTR[qVal+2]  
	mov dx,WORD PTR[qVal]   
	add ax,bx
	add ax,cx
	add ax,dx

INVOKE ExitProcess, 0
main ENDP
end main