.INCLUDE "M328Pdef.inc"


ldi r16,HIGH(RAMEND)
out SPH, R16
ldi r16,LOW(RAMEND)
out SPL, R16

start:
ldi r16,0xFF
out DDRB,r16
ldi r17,0x00
out DDRD,r17
ldi r21,0x00
ldi r23,0x01

Forever:
in r20,PIND
cp r20,r21
BREQ ledon
cp r20,r23
BREQ ledoff
rjmp Forever


ledon:
ldi r22,0x01
out PORTB,r22 
rjmp Forever

ledoff:
ldi r24,0x00
out PORTB,r24
rjmp Forever

