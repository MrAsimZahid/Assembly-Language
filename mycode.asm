
.model small ;this defines the size of ds and cs
.data                                  
A DB 10 ;DB is Define Byte
B DB ?  ; ? meanst itis not initilized so u cna also giove value instead of ?
S DB 5 
; variables are defined here
.code                      
    mov ax, @data
    mov ds,ax
;this section for code instructions
main proc
    mov al, A
    mov B, al    
    sub S, al
    neg A     
    mov al, A
    sub B, al
    
   
        
main endp
end main