INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
left DWORD 3427
right DWORD 694
total DWORD ?
diff DWORD ?

numbers DB 1, 2, 4, 8, 15, 32, 64
arrayLength DWORD 7

message DB "Hello World!", 0

.code
main PROC
	
	mov eax, left
	mov ebx, right
	
	mov total, eax
	add total, ebx
	mov ecx, total
	
	mov diff, eax
	sub diff, ebx
	mov edx, diff

	mov esi, arraylength

	call DumpRegs

	mov edx, offset message
	call WriteString
	call ReadInt

	invoke ExitProcess, 0

main ENDP

END main