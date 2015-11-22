	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
	lcall	lcd_reset
;
	mov	dptr,#_custom_initseq
	ljmp	_lcd_init_by_table

;
; If custom backlight handling is needed, uncomment the following label
; and set LCD_BACKLIGHT_CUSTOM in dpfmodel.h
; r3 contains brightness value (0 .. LCD_MAX_BRIGHTNESS_VALUE)
;
;_lcd_custom_setbacklight::

;
; If custom contrast handling is needed, uncomment the following label
; and set LCD_CONTRAST_CUSTOM in dpfmodel.h
; r3 contains contrast value (1 .. LCD_MAX_CONTRAST_VALUE)
;
;_lcd_custom_setcontrast::

	.area LCDAUX (CODE)


;backlight_table::
;	.db	If needed, put data for custom backlight handling here
;_custom_backlighttbl_len::  .db  . - backlight_table


;contrast_table::
;	.db	If needed, put data for custom contrast handling here
;_custom_contrasttbl_len::  .db  . - contrast_table

_custom_contrasttbl::
	.db	0x26, 0x30, 0x32, 0x34, 0x36, 0x38, 0x3a
_custom_contrasttbl_len::  .db  7

_custom_contrasttbl2::
	.db	0x71, 0x00, 0x71, 0x13, 0x91, 0x0c, 0x91, 0x00, 0xff
_custom_contrasttbl2_len::  .db  9

_custom_contrasttbl2_offsets::
	.db	0x07
_custom_contrasttbl2_offsets_len::  .db  1

_custom_backlighttbl::
	.db	0x9d, 0xa2, 0xa7, 0xac, 0xb1, 0xb6, 0xbb, 0xc0, 0xc5, 0xca
	.db	0xcf, 0xd4, 0xd9, 0xde, 0xe3, 0xe8, 0xed, 0xf2, 0xf6, 0xf8
	.db	0xfc, 0xfc
_custom_backlighttbl_len::  .db  22

_custom_backlighttbl2::
_custom_backlighttbl2_len::  .db  0

_custom_initseq::
	.db	0x00, 0xb0, 0x64, 0x11, 0xb0, 0x0a, 0x10, 0xb0, 0x64, 0x11
	.db	0xb0, 0xff, 0x71, 0x01, 0xb0, 0x32, 0x71, 0x11, 0xb0, 0xc8
	.db	0x71, 0xff, 0x93, 0x40, 0x03, 0x1a, 0x71, 0xd9, 0x93, 0x60
	.db	0xc7, 0x90, 0xb0, 0xc8, 0x71, 0xb1, 0x93, 0x04, 0x25, 0x18
	.db	0x71, 0xb2, 0x93, 0x04, 0x25, 0x18, 0x71, 0xb3, 0x96, 0x04
	.db	0x25, 0x18, 0x04, 0x25, 0x18, 0x71, 0xb4, 0x91, 0x03, 0x71
	.db	0xb6, 0x92, 0x15, 0x02, 0x71, 0xc0, 0x92, 0x02, 0x70, 0x71
	.db	0xc1, 0x91, 0x07, 0x71, 0xc2, 0x92, 0x01, 0x01, 0x71, 0xc3
	.db	0x92, 0x02, 0x07, 0x71, 0xc4, 0x92, 0x02, 0x04, 0x71, 0xfc
	.db	0x92, 0x11, 0x17, 0x71, 0xc5, 0x92, 0x3c, 0x4f, 0x71, 0x36
	.db	0x91, 0xc8, 0x71, 0x3a, 0x91, 0x05, 0x71, 0xe0, 0x9f, 0x06
	.db	0x0e, 0x05, 0x20, 0x27, 0x23, 0x1c, 0x21, 0x20, 0x1c, 0x26
	.db	0x2f, 0x00, 0x03, 0x00, 0x71, 0xe1, 0x9f, 0x06, 0x10, 0x05
	.db	0x21, 0x27, 0x22, 0x1c, 0x21, 0x1f, 0x1d, 0x27, 0x2f, 0x05
	.db	0x03, 0x00, 0x71, 0x2a, 0x94, 0x00, 0x02, 0x00, 0x81, 0x71
	.db	0x2b, 0x94, 0x00, 0x03, 0x00, 0x82, 0x71, 0x29, 0xb0, 0x64
	.db	0x71, 0x2c, 0xff
_custom_initseq_len::  .db  163
