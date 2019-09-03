  .file [name="checkpoint3.1.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  .label SCREEN = $400
  .const JMP = $4c
  .const NOP = $ea
.segment Code
main: {
    rts
}
vf011wr: {
    lda #')'
    sta SCREEN+$a
    jsr exit_hypervisor
    rts
}
exit_hypervisor: {
    lda #1
    sta $d67f
    rts
}
vf011rd: {
    lda #')'
    sta SCREEN+$b
    jsr exit_hypervisor
    rts
}
alttabkey: {
    lda #')'
    sta SCREEN+$c
    jsr exit_hypervisor
    rts
}
restorkey: {
    lda #')'
    sta SCREEN+$d
    jsr exit_hypervisor
    rts
}
pagfault: {
    lda #')'
    sta SCREEN+$e
    jsr exit_hypervisor
    rts
}
reset: {
    lda #')'
    sta SCREEN+$f
    jsr exit_hypervisor
    rts
}
syscall64: {
    lda #')'
    sta SCREEN+$10
    jsr exit_hypervisor
    rts
}
syscall63: {
    lda #')'
    sta SCREEN+$11
    jsr exit_hypervisor
    rts
}
syscall62: {
    lda #')'
    sta SCREEN+$12
    jsr exit_hypervisor
    rts
}
syscall61: {
    lda #')'
    sta SCREEN+$13
    jsr exit_hypervisor
    rts
}
syscall60: {
    lda #')'
    sta SCREEN+$14
    jsr exit_hypervisor
    rts
}
syscall59: {
    lda #')'
    sta SCREEN+$15
    jsr exit_hypervisor
    rts
}
syscall58: {
    lda #')'
    sta SCREEN+$16
    jsr exit_hypervisor
    rts
}
syscall57: {
    lda #')'
    sta SCREEN+$17
    jsr exit_hypervisor
    rts
}
syscall56: {
    lda #')'
    sta SCREEN+$18
    jsr exit_hypervisor
    rts
}
syscall55: {
    lda #')'
    sta SCREEN+$19
    jsr exit_hypervisor
    rts
}
syscall54: {
    lda #')'
    sta SCREEN+$1a
    jsr exit_hypervisor
    rts
}
syscall53: {
    lda #')'
    sta SCREEN+$1b
    jsr exit_hypervisor
    rts
}
syscall52: {
    lda #')'
    sta SCREEN+$1c
    jsr exit_hypervisor
    rts
}
syscall51: {
    lda #')'
    sta SCREEN+$1d
    jsr exit_hypervisor
    rts
}
syscall50: {
    lda #')'
    sta SCREEN+$1e
    jsr exit_hypervisor
    rts
}
syscall49: {
    lda #')'
    sta SCREEN+$1f
    jsr exit_hypervisor
    rts
}
syscall48: {
    lda #')'
    sta SCREEN+$20
    jsr exit_hypervisor
    rts
}
syscall47: {
    lda #')'
    sta SCREEN+$21
    jsr exit_hypervisor
    rts
}
syscall46: {
    lda #')'
    sta SCREEN+$22
    jsr exit_hypervisor
    rts
}
syscall45: {
    lda #')'
    sta SCREEN+$23
    jsr exit_hypervisor
    rts
}
syscall44: {
    lda #')'
    sta SCREEN+$24
    jsr exit_hypervisor
    rts
}
syscall43: {
    lda #')'
    sta SCREEN+$25
    jsr exit_hypervisor
    rts
}
syscall42: {
    lda #')'
    sta SCREEN+$26
    jsr exit_hypervisor
    rts
}
syscall41: {
    lda #')'
    sta SCREEN+$27
    jsr exit_hypervisor
    rts
}
syscall40: {
    lda #')'
    sta SCREEN+$28
    jsr exit_hypervisor
    rts
}
syscall39: {
    lda #')'
    sta SCREEN+$29
    jsr exit_hypervisor
    rts
}
syscall38: {
    lda #')'
    sta SCREEN+$2a
    jsr exit_hypervisor
    rts
}
syscall37: {
    lda #')'
    sta SCREEN+$2b
    jsr exit_hypervisor
    rts
}
syscall36: {
    lda #')'
    sta SCREEN+$2c
    jsr exit_hypervisor
    rts
}
syscall35: {
    lda #')'
    sta SCREEN+$2d
    jsr exit_hypervisor
    rts
}
syscall34: {
    lda #')'
    sta SCREEN+$2e
    jsr exit_hypervisor
    rts
}
syscall33: {
    lda #')'
    sta SCREEN+$2f
    jsr exit_hypervisor
    rts
}
syscall32: {
    lda #')'
    sta SCREEN+$30
    jsr exit_hypervisor
    rts
}
syscall31: {
    lda #')'
    sta SCREEN+$31
    jsr exit_hypervisor
    rts
}
syscall30: {
    lda #')'
    sta SCREEN+$32
    jsr exit_hypervisor
    rts
}
syscall29: {
    lda #')'
    sta SCREEN+$33
    jsr exit_hypervisor
    rts
}
syscall28: {
    lda #')'
    sta SCREEN+$34
    jsr exit_hypervisor
    rts
}
syscall27: {
    lda #')'
    sta SCREEN+$35
    jsr exit_hypervisor
    rts
}
syscall26: {
    lda #')'
    sta SCREEN+$36
    jsr exit_hypervisor
    rts
}
syscall25: {
    lda #')'
    sta SCREEN+$37
    jsr exit_hypervisor
    rts
}
syscall24: {
    lda #')'
    sta SCREEN+$38
    jsr exit_hypervisor
    rts
}
syscall23: {
    lda #')'
    sta SCREEN+$39
    jsr exit_hypervisor
    rts
}
syscall22: {
    lda #')'
    sta SCREEN+$3a
    jsr exit_hypervisor
    rts
}
syscall21: {
    lda #')'
    sta SCREEN+$3b
    jsr exit_hypervisor
    rts
}
syscall20: {
    lda #')'
    sta SCREEN+$3c
    jsr exit_hypervisor
    rts
}
syscall19: {
    lda #')'
    sta SCREEN+$3d
    jsr exit_hypervisor
    rts
}
syscall18: {
    lda #')'
    sta SCREEN+$3e
    jsr exit_hypervisor
    rts
}
syscall17: {
    lda #')'
    sta SCREEN+$3f
    jsr exit_hypervisor
    rts
}
syscall16: {
    lda #')'
    sta SCREEN+$40
    jsr exit_hypervisor
    rts
}
syscall15: {
    lda #')'
    sta SCREEN+$41
    jsr exit_hypervisor
    rts
}
syscall14: {
    lda #')'
    sta SCREEN+$42
    jsr exit_hypervisor
    rts
}
syscall13: {
    lda #')'
    sta SCREEN+$43
    jsr exit_hypervisor
    rts
}
syscall12: {
    lda #')'
    sta SCREEN+$44
    jsr exit_hypervisor
    rts
}
syscall11: {
    lda #')'
    sta SCREEN+$45
    jsr exit_hypervisor
    rts
}
syscall10: {
    lda #')'
    sta SCREEN+$46
    jsr exit_hypervisor
    rts
}
syscall9: {
    lda #')'
    sta SCREEN+$47
    jsr exit_hypervisor
    rts
}
syscall8: {
    lda #')'
    sta SCREEN+$48
    jsr exit_hypervisor
    rts
}
syscall7: {
    lda #')'
    sta SCREEN+$49
    jsr exit_hypervisor
    rts
}
syscall6: {
    lda #')'
    sta SCREEN+$4a
    jsr exit_hypervisor
    rts
}
syscall5: {
    lda #')'
    sta SCREEN+$4b
    jsr exit_hypervisor
    rts
}
syscall4: {
    lda #')'
    sta SCREEN+$4c
    jsr exit_hypervisor
    rts
}
syscall3: {
    lda #')'
    sta SCREEN+$4d
    jsr exit_hypervisor
    rts
}
syscall2: {
    lda #')'
    sta SCREEN+$4e
    jsr exit_hypervisor
    rts
}
syscall1: {
    lda #')'
    sta SCREEN+$4f
    jsr exit_hypervisor
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
  .byte JMP
  .word syscall3
  .byte NOP
  .byte JMP
  .word syscall4
  .byte NOP
  .byte JMP
  .word syscall5
  .byte NOP
  .byte JMP
  .word syscall6
  .byte NOP
  .byte JMP
  .word syscall7
  .byte NOP
  .byte JMP
  .word syscall8
  .byte NOP
  .byte JMP
  .word syscall9
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
  .word syscall40
  .byte NOP
  .byte JMP
  .word syscall41
  .byte NOP
  .byte JMP
  .word syscall42
  .byte NOP
  .byte JMP
  .word syscall43
  .byte NOP
  .byte JMP
  .word syscall44
  .byte NOP
  .byte JMP
  .word syscall45
  .byte NOP
  .byte JMP
  .word syscall46
  .byte NOP
  .byte JMP
  .word syscall47
  .byte NOP
  .byte JMP
  .word syscall48
  .byte NOP
  .byte JMP
  .word syscall49
  .byte NOP
  .byte JMP
  .word syscall50
  .byte NOP
  .byte JMP
  .word syscall51
  .byte NOP
  .byte JMP
  .word syscall52
  .byte NOP
  .byte JMP
  .word syscall53
  .byte NOP
  .byte JMP
  .word syscall54
  .byte NOP
  .byte JMP
  .word syscall55
  .byte NOP
  .byte JMP
  .word syscall56
  .byte NOP
  .byte JMP
  .word syscall57
  .byte NOP
  .byte JMP
  .word syscall58
  .byte NOP
  .byte JMP
  .word syscall59
  .byte NOP
  .byte JMP
  .word syscall60
  .byte NOP
  .byte JMP
  .word syscall61
  .byte NOP
  .byte JMP
  .word syscall62
  .byte NOP
  .byte JMP
  .word syscall63
  .byte NOP
  .byte JMP
  .word syscall64
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
undefined_trap:
  .byte JMP
  .word reset
  .byte NOP
  .byte JMP
  .word pagfault
  .byte NOP
  .byte JMP
  .word restorkey
  .byte NOP
  .byte JMP
  .word alttabkey
  .byte NOP
  .byte JMP
  .word vf011rd
  .byte NOP
  .byte JMP
  .word vf011wr
  .byte NOP
