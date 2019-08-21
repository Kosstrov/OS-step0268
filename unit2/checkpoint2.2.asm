  .file [name="checkpoint2.2.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  .label RASTER = $d012
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label BGCOL = $d021
  .label COLS = $d800
  .const BLACK = 0
  .const WHITE = 1
  .const JMP = $4c
  .const NOP = $ea
.segment Code
main: {
    .label sc = 4
    .label msg = 2
    lda #$14
    sta VIC_MEMORY
    ldx #' '
    lda #<SCREEN
    sta.z memset.str
    lda #>SCREEN
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    ldx #WHITE
    lda #<COLS
    sta.z memset.str
    lda #>COLS
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    lda #<SCREEN+$28
    sta.z sc
    lda #>SCREEN+$28
    sta.z sc+1
    lda #<MESSAGE
    sta.z msg
    lda #>MESSAGE
    sta.z msg+1
  b1:
    ldy #0
    lda (msg),y
    cmp #0
    bne b2
  b3:
    lda #$36
    cmp RASTER
    beq b4
    lda #$42
    cmp RASTER
    beq b4
    lda #BLACK
    sta BGCOL
    jmp b3
  b4:
    lda #WHITE
    sta BGCOL
    jmp b3
  b2:
    ldy #0
    lda (msg),y
    sta (sc),y
    inc.z sc
    bne !+
    inc.z sc+1
  !:
    inc.z msg
    bne !+
    inc.z msg+1
  !:
    jmp b1
}
// Copies the character c (an unsigned char) to the first num characters of the object pointed to by the argument str.
// memset(void* zeropage(4) str, byte register(X) c, word zeropage(2) num)
memset: {
    .label end = 2
    .label dst = 4
    .label num = 2
    .label str = 4
    lda.z num
    bne !+
    lda.z num+1
    beq breturn
  !:
    lda.z end
    clc
    adc.z str
    sta.z end
    lda.z end+1
    adc.z str+1
    sta.z end+1
  b2:
    lda.z dst+1
    cmp.z end+1
    bne b3
    lda.z dst
    cmp.z end
    bne b3
  breturn:
    rts
  b3:
    txa
    ldy #0
    sta (dst),y
    inc.z dst
    bne !+
    inc.z dst+1
  !:
    jmp b2
}
syscall3E: {
    lda #')'
    sta SCREEN+$11
    rts
}
syscall3D: {
    lda #')'
    sta SCREEN+$12
    rts
}
syscall3C: {
    lda #')'
    sta SCREEN+$13
    rts
}
syscall3B: {
    lda #')'
    sta SCREEN+$14
    rts
}
syscall3A: {
    lda #')'
    sta SCREEN+$15
    rts
}
syscall39: {
    lda #')'
    sta SCREEN+$16
    rts
}
syscall38: {
    lda #')'
    sta SCREEN+$17
    rts
}
syscall37: {
    lda #')'
    sta SCREEN+$18
    rts
}
syscall36: {
    lda #')'
    sta SCREEN+$19
    rts
}
syscall35: {
    lda #')'
    sta SCREEN+$1a
    rts
}
syscall34: {
    lda #')'
    sta SCREEN+$1b
    rts
}
syscall33: {
    lda #')'
    sta SCREEN+$1c
    rts
}
syscall32: {
    lda #')'
    sta SCREEN+$1d
    rts
}
syscall31: {
    lda #')'
    sta SCREEN+$1e
    rts
}
syscall30: {
    lda #')'
    sta SCREEN+$1f
    rts
}
syscall2F: {
    lda #')'
    sta SCREEN+$20
    rts
}
syscall2E: {
    lda #')'
    sta SCREEN+$21
    rts
}
syscall2D: {
    lda #')'
    sta SCREEN+$22
    rts
}
syscall2C: {
    lda #')'
    sta SCREEN+$23
    rts
}
syscall2B: {
    lda #')'
    sta SCREEN+$24
    rts
}
syscall2A: {
    lda #')'
    sta SCREEN+$25
    rts
}
syscall29: {
    lda #')'
    sta SCREEN+$26
    rts
}
syscall28: {
    lda #')'
    sta SCREEN+$27
    rts
}
syscall27: {
    lda #')'
    sta SCREEN+$28
    rts
}
syscall26: {
    lda #')'
    sta SCREEN+$29
    rts
}
syscall25: {
    lda #')'
    sta SCREEN+$2a
    rts
}
syscall24: {
    lda #')'
    sta SCREEN+$2b
    rts
}
syscall23: {
    lda #')'
    sta SCREEN+$2c
    rts
}
syscall22: {
    lda #')'
    sta SCREEN+$2d
    rts
}
syscall21: {
    lda #')'
    sta SCREEN+$2e
    rts
}
syscall20: {
    lda #')'
    sta SCREEN+$2f
    rts
}
syscall1F: {
    lda #')'
    sta SCREEN+$30
    rts
}
syscall1E: {
    lda #')'
    sta SCREEN+$31
    rts
}
syscall1D: {
    lda #')'
    sta SCREEN+$32
    rts
}
syscall1C: {
    lda #')'
    sta SCREEN+$33
    rts
}
syscall1B: {
    lda #')'
    sta SCREEN+$34
    rts
}
syscall1A: {
    lda #')'
    sta SCREEN+$35
    rts
}
syscall19: {
    lda #')'
    sta SCREEN+$36
    rts
}
syscall18: {
    lda #')'
    sta SCREEN+$37
    rts
}
syscall17: {
    lda #')'
    sta SCREEN+$38
    rts
}
syscall16: {
    lda #')'
    sta SCREEN+$39
    rts
}
syscall15: {
    lda #')'
    sta SCREEN+$3a
    rts
}
syscall14: {
    lda #')'
    sta SCREEN+$3b
    rts
}
syscall13: {
    lda #')'
    sta SCREEN+$3c
    rts
}
syscall12: {
    lda #')'
    sta SCREEN+$3d
    rts
}
syscall11: {
    lda #')'
    sta SCREEN+$3e
    rts
}
syscall10: {
    lda #')'
    sta SCREEN+$3f
    rts
}
syscall0F: {
    lda #')'
    sta SCREEN+$40
    rts
}
syscall0E: {
    lda #')'
    sta SCREEN+$41
    rts
}
syscall0D: {
    lda #')'
    sta SCREEN+$42
    rts
}
syscall0C: {
    lda #')'
    sta SCREEN+$43
    rts
}
syscall0B: {
    lda #')'
    sta SCREEN+$44
    rts
}
syscall0A: {
    lda #')'
    sta SCREEN+$45
    rts
}
syscall09: {
    lda #')'
    sta SCREEN+$46
    rts
}
syscall08: {
    lda #')'
    sta SCREEN+$47
    rts
}
syscall07: {
    lda #')'
    sta SCREEN+$48
    rts
}
syscall06: {
    lda #')'
    sta SCREEN+$49
    rts
}
syscall05: {
    lda #')'
    sta SCREEN+$4a
    rts
}
syscall04: {
    lda #')'
    sta SCREEN+$4b
    rts
}
syscall03: {
    lda #')'
    sta SCREEN+$4c
    rts
}
syscall02: {
    lda #')'
    sta SCREEN+$4d
    rts
}
syscall01: {
    lda #')'
    sta SCREEN+$4e
    rts
}
syscall00: {
    lda #')'
    sta SCREEN+$4f
    rts
}
.segment Data
  MESSAGE: .text "give me please checkpoint 2.2!"
  .byte 0
.segment Syscall
  .align $100
SYSCALLS:
  .byte JMP
  .word syscall00
  .byte NOP
  .byte JMP
  .word syscall01
  .byte NOP
  .byte JMP
  .word syscall02
  .byte NOP
  .byte JMP
  .word syscall03
  .byte NOP
  .byte JMP
  .word syscall04
  .byte NOP
  .byte JMP
  .word syscall05
  .byte NOP
  .byte JMP
  .word syscall06
  .byte NOP
  .byte JMP
  .word syscall07
  .byte NOP
  .byte JMP
  .word syscall08
  .byte NOP
  .byte JMP
  .word syscall09
  .byte NOP
  .byte JMP
  .word syscall0A
  .byte NOP
  .byte JMP
  .word syscall0B
  .byte NOP
  .byte JMP
  .word syscall0C
  .byte NOP
  .byte JMP
  .word syscall0D
  .byte NOP
  .byte JMP
  .word syscall0E
  .byte NOP
  .byte JMP
  .word syscall0F
  .byte NOP
  .byte JMP
  .word syscall10
  .byte NOP
  .byte JMP
  .word syscall11
  .byte NOP
  .byte JMP
  .word syscall12
  .byte NOP
  .byte JMP
  .word syscall13
  .byte NOP
  .byte JMP
  .word syscall14
  .byte NOP
  .byte JMP
  .word syscall15
  .byte NOP
  .byte JMP
  .word syscall16
  .byte NOP
  .byte JMP
  .word syscall17
  .byte NOP
  .byte JMP
  .word syscall18
  .byte NOP
  .byte JMP
  .word syscall19
  .byte NOP
  .byte JMP
  .word syscall1A
  .byte NOP
  .byte JMP
  .word syscall1B
  .byte NOP
  .byte JMP
  .word syscall1C
  .byte NOP
  .byte JMP
  .word syscall1D
  .byte NOP
  .byte JMP
  .word syscall1E
  .byte NOP
  .byte JMP
  .word syscall1F
  .byte NOP
  .byte JMP
  .word syscall20
  .byte NOP
  .byte JMP
  .word syscall21
  .byte NOP
  .byte JMP
  .word syscall22
  .byte NOP
  .byte JMP
  .word syscall23
  .byte NOP
  .byte JMP
  .word syscall24
  .byte NOP
  .byte JMP
  .word syscall25
  .byte NOP
  .byte JMP
  .word syscall26
  .byte NOP
  .byte JMP
  .word syscall27
  .byte NOP
  .byte JMP
  .word syscall28
  .byte NOP
  .byte JMP
  .word syscall29
  .byte NOP
  .byte JMP
  .word syscall2A
  .byte NOP
  .byte JMP
  .word syscall2B
  .byte NOP
  .byte JMP
  .word syscall2C
  .byte NOP
  .byte JMP
  .word syscall2D
  .byte NOP
  .byte JMP
  .word syscall2E
  .byte NOP
  .byte JMP
  .word syscall2F
  .byte NOP
  .byte JMP
  .word syscall30
  .byte NOP
  .byte JMP
  .word syscall31
  .byte NOP
  .byte JMP
  .word syscall32
  .byte NOP
  .byte JMP
  .word syscall33
  .byte NOP
  .byte JMP
  .word syscall34
  .byte NOP
  .byte JMP
  .word syscall35
  .byte NOP
  .byte JMP
  .word syscall36
  .byte NOP
  .byte JMP
  .word syscall37
  .byte NOP
  .byte JMP
  .word syscall38
  .byte NOP
  .byte JMP
  .word syscall39
  .byte NOP
  .byte JMP
  .word syscall3A
  .byte NOP
  .byte JMP
  .word syscall3B
  .byte NOP
  .byte JMP
  .word syscall3C
  .byte NOP
  .byte JMP
  .word syscall3D
  .byte NOP
  .byte JMP
  .word syscall3E
  .byte NOP
  .align $100
TRAPS:
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
  .byte JMP
  .word main
  .byte NOP
