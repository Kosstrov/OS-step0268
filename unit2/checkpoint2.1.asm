  .file [name="checkpoint2.1.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label BGCOL = $d021
  .label COLS = $d800
  .const JMP = $4c
  .const NOP = $ea
  .label sc = 2
.segment Code
main: {
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
    ldx #2
    lda #<COLS
    sta.z memset.str
    lda #>COLS
    sta.z memset.str+1
    lda #<$28*$f
    sta.z memset.num
    lda #>$28*$f
    sta.z memset.num+1
    jsr memset
  b1:
    lda #<SCREEN
    sta.z sc
    lda #>SCREEN
    sta.z sc+1
    ldx #0
  b2:
    lda #$53
    ldy #2
    sta (sc),y
    lda #$2d
    clc
    adc.z sc
    sta.z sc
    bcc !+
    inc.z sc+1
  !:
    lda #0
    sta BGCOL
    inx
    cpx #8
    bcc b2
    ldy #8
  b4:
    lda #$53
    sta (sc),y
    lda #$2d
    clc
    adc.z sc
    sta.z sc
    bcc !+
    inc.z sc+1
  !:
    lda #7
    sta BGCOL
    iny
    cpy #$10
    bcc b4
    ldy #$10
  b6:
    lda #$53
    sta (sc),y
    lda #$2d
    clc
    adc.z sc
    sta.z sc
    bcc !+
    inc.z sc+1
  !:
    lda #2
    sta BGCOL
    iny
    cpy #$19
    bcc b6
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
syscall2: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall1: {
    lda #'>'
    sta SCREEN+$4f
    rts
}
.segment Syscall
  .align $100
SYSCALLS:
  .byte JMP
  .word syscall1
  .byte NOP
  .byte JMP
  .word syscall2
  .byte NOP
  .align $100
SYSCALL_RESET:
  .byte JMP
  .word main
  .byte NOP
