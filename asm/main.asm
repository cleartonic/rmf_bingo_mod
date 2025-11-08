hirom

!stage_select_draw_map = $C0620C
!stage_select_draw_ksg = $C06229
!stage_select_allow_stage_selections = $C36BDD
!stage_select_allow_ksg_selection2 = $C2E0C9
!stage_select_allow_ksg_selection = $C36BCD
!always_enable_stage_select = $C035CA

; char select to map
org $c05ba8
JML $C48100

org $C48100
pha
LDA #$02 ; lives
STA $0B7E 
LDA #$0A ; Game mode: stage select 
STA $00E0 ; Game mode
LDA #$00 ; Value of 00 here means to not trigger loading the stage immediately
STA $00E1 ; Game mode

; original code
pla
ldx $0b76
lda $8a43,x
tay
JML $c05baf


org $c05bb2
lda #$00




org !stage_select_draw_map
start1:
lda $0b7f,x
bra branch1 ; changed from bmi to bra
lda $8a73,x
tay
lda #$4800
sta $0300,y
iny
iny
lda #$4800
sta $0300,y
branch1:
dex
dex
bne start1

org !stage_select_draw_ksg
jmp $623B

org !stage_select_allow_stage_selections
nop
nop

org !stage_select_allow_ksg_selection
jmp $6BD7

; not sure what this did?
; org !stage_select_allow_ksg_selection2
; jmp $E0D0


org !always_enable_stage_select
jmp $35D0


org $C05E98
jml set_weapons_king

org $C48200
set_weapons_king:
lda $0b73
CMP #$0A
bne set_weapons_king_finish
lda #$9C
TSB $0b82
TSB $0b84
TSB $0b86
TSB $0b88
TSB $0b8A
TSB $0b8C
TSB $0b8E
TSB $0b90

set_weapons_king_finish:
CMP #$0C
jml $C05E9C
