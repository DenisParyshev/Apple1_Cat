* = $280

jmp start

data
* = $280

jmp start

field1
.byte #$8D
.ASCII "             "
.byte #$0
.ASCII "     ,MMM88..."
.byte #$8D
.ASCII "                  MMMM88.....    ."
.byte #$8D
.ASCII "                 MMMM88......."
.byte #$8D
.ASCII "     "
.byte #$00
.ASCII "           MMM88........"
.byte #$8D
.ASCII "                 MMM88........"
.byte #$8D
.ASCII "                 'MMM88......'"
.byte #$8D
.ASCII "                   'MMM8...'      "
.byte #$00
.byte #$8D
.ASCII "Q"
field2
.ASCII "          !\___/!"
.byte #$8D
.ASCII "          )     (   .       '"
.byte #$8D
.ASCII "         =\     /="
.byte #$8D
.ASCII "           )===(       "
.byte #$00
.byte #$8D
.ASCII "  "
.byte #$00
.ASCII "        /    \"
.byte #$8D
.ASCII "          !     !"
.byte #$8D
.ASCII "         /       \"
.byte #$8D
.ASCII "         \       /"
.byte #$8D
.ASCII "Q"
field3
.ASCII "  _/\_/\_/\__  _/_/\_/\_/\_/\_/\_/\_/\"
.byte #$8D
.ASCII "  !  !  !  !( (  !  !  !  !  !  !  !  "
.byte #$8D
.ASCII "  !  !  !  ! ) ) !  !  !  !  !  !  !  "
.byte #$8D
.ASCII "  !  !  !  !(_(  !  !  !  !  !  !  !  "
.byte #$8D
.ASCII "  !  !  !  !  !  !  !  !  !  !  !  !  "
.byte #$8D
.ASCII "  !  !  !  !  !  !  !  !  !  !  !  !Q"

cls
  ldx #$0
  lda #$8D
clrnext
  jsr $FFEF 
  inx
  cpx #$18 
  beq donecls
  jmp clrnext
donecls
rts

print1
  ldx #$0
prnnext1
  lda field1,x
  cmp #$51
  beq donecls
  jsr $FFEF 
  inx
  jmp prnnext1
doneprn1
rts

print2
  ldx #$0
prnnext2
  lda field2,x
  cmp #$51
  beq donecls
  jsr $FFEF 
  inx
  jmp prnnext2
doneprn2
rts

print3
  ldx #$0
prnnext3
  lda field3,x
  cmp #$51
  beq donecls
  jsr $FFEF 
  inx
  jmp prnnext3
doneprn3
rts

start
  jsr cls
  jsr print1
  jsr print2
  jsr print3
m1
  jmp m1
rts
