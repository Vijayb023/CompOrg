; Vijay Bagavatula 
;CSC3210
;Assignment 2
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
    
.code 
main PROC 


invoke ExitProcess,0
main endp
end main