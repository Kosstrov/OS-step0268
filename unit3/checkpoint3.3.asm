  .file [name="checkpoint3.3.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label COLS = $d800
  .const JMP = $4c
  .const NOP = $ea
  .label p = $d
  .label current_screen_line = 2
  .label current_screen_x = 6
  .label current_screen_line_13 = 4
  .label v2 = $f
  .label current_screen_line_56 = 4
  .label current_screen_line_57 = 4
  .label current_screen_line_58 = 4
  .label current_screen_line_59 = 4
  lda #<$800
  sta.z p
  lda #>$800
  sta.z p+1
  jsr main
  rts
.segment Code
main: {
    rts
}
syscall64: {
    jsr exit_hypervisor
    rts
}
exit_hypervisor: {
    lda #1
    sta $d67f
    rts
}
syscall63: {
    jsr exit_hypervisor
    rts
}
syscall62: {
    jsr exit_hypervisor
    rts
}
syscall61: {
    jsr exit_hypervisor
    rts
}
syscall60: {
    jsr exit_hypervisor
    rts
}
syscall59: {
    jsr exit_hypervisor
    rts
}
syscall58: {
    jsr exit_hypervisor
    rts
}
syscall57: {
    jsr exit_hypervisor
    rts
}
syscall56: {
    jsr exit_hypervisor
    rts
}
syscall55: {
    jsr exit_hypervisor
    rts
}
syscall54: {
    jsr exit_hypervisor
    rts
}
syscall53: {
    jsr exit_hypervisor
    rts
}
syscall52: {
    jsr exit_hypervisor
    rts
}
syscall51: {
    jsr exit_hypervisor
    rts
}
syscall50: {
    jsr exit_hypervisor
    rts
}
syscall49: {
    jsr exit_hypervisor
    rts
}
syscall48: {
    jsr exit_hypervisor
    rts
}
syscall47: {
    jsr exit_hypervisor
    rts
}
syscall46: {
    jsr exit_hypervisor
    rts
}
syscall45: {
    jsr exit_hypervisor
    rts
}
syscall44: {
    jsr exit_hypervisor
    rts
}
syscall43: {
    jsr exit_hypervisor
    rts
}
syscall42: {
    jsr exit_hypervisor
    rts
}
syscall41: {
    jsr exit_hypervisor
    rts
}
syscall40: {
    jsr exit_hypervisor
    rts
}
syscall39: {
    jsr exit_hypervisor
    rts
}
syscall38: {
    jsr exit_hypervisor
    rts
}
syscall37: {
    jsr exit_hypervisor
    rts
}
syscall36: {
    jsr exit_hypervisor
    rts
}
syscall35: {
    jsr exit_hypervisor
    rts
}
syscall34: {
    jsr exit_hypervisor
    rts
}
syscall33: {
    jsr exit_hypervisor
    rts
}
syscall32: {
    jsr exit_hypervisor
    rts
}
syscall31: {
    jsr exit_hypervisor
    rts
}
syscall30: {
    jsr exit_hypervisor
    rts
}
syscall29: {
    jsr exit_hypervisor
    rts
}
syscall28: {
    jsr exit_hypervisor
    rts
}
syscall27: {
    jsr exit_hypervisor
    rts
}
syscall26: {
    jsr exit_hypervisor
    rts
}
syscall25: {
    jsr exit_hypervisor
    rts
}
syscall24: {
    jsr exit_hypervisor
    rts
}
syscall23: {
    jsr exit_hypervisor
    rts
}
syscall22: {
    jsr exit_hypervisor
    rts
}
syscall21: {
    jsr exit_hypervisor
    rts
}
syscall20: {
    jsr exit_hypervisor
    rts
}
syscall19: {
    jsr exit_hypervisor
    rts
}
syscall18: {
    jsr exit_hypervisor
    rts
}
syscall17: {
    jsr exit_hypervisor
    rts
}
syscall16: {
    jsr exit_hypervisor
    rts
}
syscall15: {
    jsr exit_hypervisor
    rts
}
syscall14: {
    jsr exit_hypervisor
    rts
}
syscall13: {
    jsr exit_hypervisor
    rts
}
SECUREXIT: {
    jsr exit_hypervisor
    rts
}
SECURENTR: {
    jsr exit_hypervisor
    rts
}
syscall10: {
    jsr exit_hypervisor
    rts
}
syscall9: {
    jsr exit_hypervisor
    rts
}
syscall8: {
    jsr exit_hypervisor
    rts
}
syscall7: {
    jsr exit_hypervisor
    rts
}
syscall6: {
    jsr exit_hypervisor
    rts
}
syscall5: {
    jsr exit_hypervisor
    rts
}
syscall4: {
    jsr exit_hypervisor
    rts
}
syscall3: {
    jsr exit_hypervisor
    rts
}
syscall2: {
    jsr exit_hypervisor
    rts
}
syscall1: {
    jsr exit_hypervisor
    rts
}
VF011WR: {
    rts
}
VF011RD: {
    rts
}
ALTTABKEY: {
    rts
}
RESTORKEY: {
    rts
}
/*
p=start;
	while(start<0x0800) {
		current_screen_x=0;
		print_to_screen(MESSAGE3);
		print_hex(start);
		start++;
	}
	print_newLine();
	print_to_screen(MESSAGE4);
	print_hex(0x7FFF);
	print_newLine();
	print_to_screen(MESSAGE5);
	mem_start=start;
	print_hex(mem_start);
	print_to_screen(MESSAGE6);
	mem_end=0x7FFF;
	print_hex(mem_end);

}




do{
attemp to write every value;
correctly read back;
} while (incorrectly read back;)
print("memory error at" + $xxxx);
unsigned char mem_end = $xxxx-1;
print("memory found at" + mem_start "-" mem_end);
}
for () {
1. going through all range of memory
2. write and read
}
*/
PAGFAULT: {
    rts
}
RESET: {
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
    ldx #6
    lda #<COLS
    sta.z memset.str
    lda #>COLS
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    lda #<MESSAGE1
    sta.z print_to_screen.message
    lda #>MESSAGE1
    sta.z print_to_screen.message+1
    lda #0
    sta.z current_screen_x
    lda #<$400
    sta.z current_screen_line_13
    lda #>$400
    sta.z current_screen_line_13+1
    jsr print_to_screen
    lda #<$400
    sta.z current_screen_line
    lda #>$400
    sta.z current_screen_line+1
    jsr print_newLine
    lda.z current_screen_line
    sta.z current_screen_line_56
    lda.z current_screen_line+1
    sta.z current_screen_line_56+1
    lda #<MESSAGE2
    sta.z print_to_screen.message
    lda #>MESSAGE2
    sta.z print_to_screen.message+1
    lda #0
    sta.z current_screen_x
    jsr print_to_screen
    jsr print_newLine
    jsr detect_devices
    jsr exit_hypervisor
    rts
}
detect_devices: {
    .label i = 7
    lda #0
    sta.z current_screen_x
    lda #<$d000
    sta.z i
    lda #>$d000
    sta.z i+1
  b1:
    lda.z i+1
    cmp #>$dff0
    bne !+
    lda.z i
    cmp #<$dff0
  !:
    bcc b2
    beq b2
    lda.z current_screen_line
    sta.z current_screen_line_57
    lda.z current_screen_line+1
    sta.z current_screen_line_57+1
    lda #<MESSAGE7
    sta.z print_to_screen.message
    lda #>MESSAGE7
    sta.z print_to_screen.message+1
    jsr print_to_screen
    rts
  b2:
    jsr detect_vicii
    lda #$a
    clc
    adc.z i
    sta.z i
    bcc !+
    inc.z i+1
  !:
    jmp b1
}
// detect_vicii(word zeropage(7) adrs)
detect_vicii: {
    .label adrs = 7
    .label p = $b
    .label i = 9
    lda #<0
    sta.z p
    sta.z p+1
    ldy #$12
    lda (adrs),y
    tax
    lda #<1
    sta.z i
    lda #>1
    sta.z i+1
  b2:
    lda.z i+1
    cmp #>$3e8
    bcc b4
    bne !+
    lda.z i
    cmp #<$3e8
    bcc b4
  !:
    ldy #$12
    lda (adrs),y
    sta.z v2
    cpx.z v2
    bcc b1
    rts
  b1:
    lda.z current_screen_line
    sta.z current_screen_line_58
    lda.z current_screen_line+1
    sta.z current_screen_line_58+1
    lda #<MESSAGE3
    sta.z print_to_screen.message
    lda #>MESSAGE3
    sta.z print_to_screen.message+1
    jsr print_to_screen
    lda.z adrs
    sta.z print_hex.value
    lda.z adrs+1
    sta.z print_hex.value+1
    jsr print_hex
    jsr print_newLine
    lda #0
    sta.z current_screen_x
    rts
  b4:
    inc.z i
    bne !+
    inc.z i+1
  !:
    jmp b2
}
print_newLine: {
    lda #$28
    clc
    adc.z current_screen_line
    sta.z current_screen_line
    bcc !+
    inc.z current_screen_line+1
  !:
    rts
}
// print_hex(word zeropage(9) value)
print_hex: {
    .label _3 = $10
    .label _6 = $12
    .label value = 9
    ldx #0
  b1:
    cpx #4
    bcc b2
    lda #0
    sta hex+4
    lda.z current_screen_line
    sta.z current_screen_line_59
    lda.z current_screen_line+1
    sta.z current_screen_line_59+1
    lda #<hex
    sta.z print_to_screen.message
    lda #>hex
    sta.z print_to_screen.message+1
    jsr print_to_screen
    rts
  b2:
    lda.z value+1
    cmp #>$a000
    bcc b4
    bne !+
    lda.z value
    cmp #<$a000
    bcc b4
  !:
    ldy #$c
    lda.z value
    sta.z _3
    lda.z value+1
    sta.z _3+1
    cpy #0
    beq !e+
  !:
    lsr.z _3+1
    ror.z _3
    dey
    bne !-
  !e:
    lda.z _3
    sec
    sbc #9
    sta hex,x
  b5:
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    inx
    jmp b1
  b4:
    ldy #$c
    lda.z value
    sta.z _6
    lda.z value+1
    sta.z _6+1
    cpy #0
    beq !e+
  !:
    lsr.z _6+1
    ror.z _6
    dey
    bne !-
  !e:
    lda.z _6
    clc
    adc #'0'
    sta hex,x
    jmp b5
  .segment Data
    hex: .fill 5, 0
}
.segment Code
// print_to_screen(byte* zeropage(9) message)
print_to_screen: {
    .label sc = $10
    .label message = 9
    lda.z current_screen_x
    clc
    adc.z current_screen_line_13
    sta.z sc
    lda #0
    adc.z current_screen_line_13+1
    sta.z sc+1
  b1:
    ldy #0
    lda (message),y
    cmp #0
    bne b2
    rts
  b2:
    ldy #0
    lda (message),y
    sta (sc),y
    inc.z sc
    bne !+
    inc.z sc+1
  !:
    inc.z message
    bne !+
    inc.z message+1
  !:
    inc.z current_screen_x
    jmp b1
}
// Copies the character c (an unsigned char) to the first num characters of the object pointed to by the argument str.
// memset(void* zeropage(9) str, byte register(X) c, word zeropage(7) num)
memset: {
    .label end = 7
    .label dst = 9
    .label num = 7
    .label str = 9
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
.segment Data
  MESSAGE1: .text "step0268 operating system starting..."
  .byte 0
  MESSAGE2: .text "testing hardware"
  .byte 0
  MESSAGE3: .text "vic-ii detected at $"
  .byte 0
  MESSAGE7: .text "finished probing devices"
  .byte 0
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
  .word SECURENTR
  .byte NOP
  .byte JMP
  .word SECUREXIT
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
SYSCALL_RESET:
  .byte JMP
  .word RESET
  .byte NOP
  .byte JMP
  .word PAGFAULT
  .byte NOP
  .byte JMP
  .word RESTORKEY
  .byte NOP
  .byte JMP
  .word ALTTABKEY
  .byte NOP
  .byte JMP
  .word VF011RD
  .byte NOP
  .byte JMP
  .word VF011WR
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
  .byte JMP
  .word main
  .byte NOP
