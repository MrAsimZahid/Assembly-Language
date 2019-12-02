
.model small ;this defines the size of ds and cs
.data 
; variables are defined here
.code
;this section for code instructions
main proc
    mov al, 3
    mov dl,al
    mov ah,2
    int 21h
    
main endp
end main