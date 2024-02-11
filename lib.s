	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_whatido                        ; -- Begin function whatido
	.p2align	2
_whatido:                               ; @whatido
	.cfi_startproc
; %bb.0:
	add	w8, w0, w1
	add	w0, w8, #2
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
