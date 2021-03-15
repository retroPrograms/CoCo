	org $8000

Start
	lda #72
	sta $0402
	lda #69
	sta $0403
	lda #76
	sta $0404
	lda #76
	sta $0405
	lda #79
	sta $0406
	lda #128
	sta $0407
	lda #87
	sta $0408
	lda #79
	sta $0409
	lda #82
	sta $040A
	lda #76
	sta $040B
	lda #68
	sta $040C
	ldx #$ff
	lda #$ff 

loop 	bra loop
	end