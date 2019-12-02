; string display program

.model small
.data    
msg db "hello world$"                   
msg1 db "Assembly language$"
.code
main proc
    mov ax,@data
    mov ds,ax
                                th
    lea dx, msg
    mov ah,9 ;this is for string display
    int 21h
    
    ;;;;;;;;;;;;;;;;  new line
    mov ah ,2
    mov dl,0dh
    int 21h   
        
    mov ah,0ah
    int 21h
    
    
    lea dx,msg1
    
    mov ah,9
    int 21h
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,4ch
    int 21h
main endp
end main