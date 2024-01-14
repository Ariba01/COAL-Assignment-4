[org 0x0100]

rev:
reverse:
push bp
mov bp, sp
mov bx, 0
l1:
mov ax,[bp+4]
pop ax
add bx, 2
cmp bx, 12
jne l1
pop bp
ret 10


start:
mov cx, 10
rev_loop:
mov ah, 1
int 21h
mov dl, al
push dx
loop rev_loop
call rev
mov ah, 4ch
int 21h