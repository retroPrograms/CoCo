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
	ldx #$80
	lda #$ff 
	ldy Table
loop1:
	lda 0,y+
	sta $0400,x
	;deca
	;leax -1,x
	;bne loop1
loop 	bra loop


Table:
	fcc 'HEllo world'
	
	end