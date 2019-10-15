.pc = $801 "Basic"
:BasicUpstart(main)
.pc = $80d "Program"
main: {
    jsr call_syscall00
    jsr call_syscall01
  __b1:
    jmp __b1
}
call_syscall01: {
    jsr enable_syscall
    lda #1
    sta $d641
    nop
    rts
}
enable_syscall: {
    lda #$47
    sta $d02f
    lda #$53
    sta $d02f
    rts
}
call_syscall00: {
    jsr enable_syscall
    lda #0
    sta $d640
    nop
    rts
}
