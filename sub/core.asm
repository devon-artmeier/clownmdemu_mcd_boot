; ----------------------------------------------------------------------
; Mega CD minimal boot ROM for clownmdemu
; ----------------------------------------------------------------------
; Sub CPU core file
; ----------------------------------------------------------------------
; Copyright (c) 2024 Devon Artmeier
;
; Permission to use, copy, modify, and/or distribute this software
; for any purpose with or without fee is hereby granted.
;
; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
; WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIE
; WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
; AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
; DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
; PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER 
; TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
; PERFORMANCE OF THIS SOFTWARE.
; ----------------------------------------------------------------------

	include	"sub/_mcd_sub.inc"
	include	"sub/_ram.inc"
	
; ----------------------------------------------------------------------
; Header
; ----------------------------------------------------------------------

	include	"sub/header.asm"

; ----------------------------------------------------------------------
; Program
; ----------------------------------------------------------------------

	include	"sub/call_table.asm"
	include	"sub/interrupt.asm"
	include	"sub/module.asm"
	include	"sub/main.asm"
	include	"sub/pcm.asm"
	
; ----------------------------------------------------------------------
; Padding
; ----------------------------------------------------------------------

	dcb.b	$5800-*, $FF

; ----------------------------------------------------------------------