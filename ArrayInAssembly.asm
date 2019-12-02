.model small
.data
  
  Array db 1,2,3,4,5        
  .code
  main proc 
    mov ax @data
    mov ds, ax
    mov si, offset Array
    mov cx, 5
    mov dl, Array[si]
    
    label:
    mov ah,2
    int 21h
    add dl, 1
        loop label         
        
    mov ah, 4ch
    int 21h
    
   main endp
  end main