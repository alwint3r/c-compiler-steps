	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_mul                            ; -- Begin function mul
	.p2align	2
_mul:                                   ; @mul
	.cfi_startproc
; %bb.0:
	add	w8, w0, #255
	add	w9, w1, #255
	mul	w0, w9, w8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	mov	w0, #1
	mov	w1, #768
	movk	w1, #1, lsl #16
	b	_whatido
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
