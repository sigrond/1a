section	.text
global  func1a

func1a:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD [ebp+8]	;adres *a do eax
	mov	cl, BYTE [eax]		;weź znak

loop:
    cmp ecx, 'a'    ;a[i]>=a
    jge zmien
    test cl, cl
    jz koniec
    inc eax
    mov	cl, BYTE [eax]
    jmp loop

zmien:
    mov	BYTE [eax], '*'
    inc eax
    mov	cl, BYTE [eax]
    jmp loop

koniec:
	mov	eax, 0		;return a
	pop	ebp
	ret
