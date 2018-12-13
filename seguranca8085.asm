.org 00h
jmp configure

.org 003ch
jmp erro

configure:;apaga qualquer mensagem existente
mvi a, 00h
out 00h
mvi a, 00h
out 01h
mvi a, 00h
out 02h
mvi a, 00h
out 03h
mvi a, 00h
out 04h
mvi a, 00h
out 05h
mvi a, 00h
out 06h
mvi a, 00h
out 07h
mvi a, 00h
out 08h
mvi a, 00h
out 09h
mvi a, 00h
out 0Ah
mvi a, 00h
out 0Bh
mvi a, 00h
out 0Ch
mvi a, 00h
out 0Dh
mvi a, 00h
out 0Eh
mvi a, 00h
out 0Fh
mvi a, 00h
out 0Fh

Mensagem:;escreve "ola"
mvi a, 00h
out 00h

mvi a, 77h
out 01h

mvi a, 00h
out 02h

mvi a, 31h
out 03h

mvi a, 00h
out 04h

mvi a, 5fh
out 05h

habilita_int:
EI

carregapilha:
LXI SP, FFFFH

contadorerro:
mvi c, 5

senha:; senha "ab"

letra_a:
in 00h
cpi 61H
jz letra_b
jmp letra_a

letra_b:
in 00h
cpi 62H
jz nome
jmp letra_b

nome:; nome dav ste

mvi A, 42h
out 00h

mvi A, 66h
out 01h

mvi A, 00h
out 02h

mvi A, 5fh
out 03h

mvi A, 24h
out 04h

mvi A, 11h
out 05h

mvi A, 00h
out 06h

mvi A, 00h
out 07h

mvi A, 18h
out 08h

mvi A, 63h
out 09h

mvi A, 42h
out 0Ah

mvi A, 02h
out 0Bh

mvi A, 00h
out 0Ch

mvi A, 3bh
out 0Dh

destrava:;para voltar ao começo
esc:
di
in 00h
cpi 1Bh
jz configure
jmp esc

erro:;o erro
dcr c
ei
jz erro1
ret


erro1:;a mensagem de error "error"
di
mvi a, 00h
out 00h
mvi a, 3Bh
out 01h
mvi a, 80h
out 02h
mvi a, 1Fh
out 03h
mvi a, 80h
out 04h
mvi a, 1Fh
out 05h
mvi a, 00h
out 06h
mvi a, 77h
out 07h
mvi a, 80h
out 08h
mvi a, 1Fh
out 09h
