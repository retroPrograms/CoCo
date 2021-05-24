    org $8000

Start
  	lda #$00
	sta $6f  ;DEVNUM 0 screen 2 printer
	
       ldy #$0400 ;Start of screen
       ;ldy #12
       
	ldx Table
	

loop:
	lda ,x+
        ;sta $05ff
        cmpa #0
        beq end1
        sta ,y+
        ;dey
        bra loop
end1:	
	lda #$100
       sta $05fe
loop2: 	bra loop2

Print: 
	jsr [$A002]
	rts

Table:
	fcb "dial the gate",0
	
end