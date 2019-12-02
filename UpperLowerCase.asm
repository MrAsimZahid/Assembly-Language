; string display program

.model small
.data    
msg db "Enter upper case letter: $"                   
msg1 db "Assembly language$"
var db ?
.code
main proc
    mov ax,@data
    mov ds,ax                    
    
    
    lea dx, msg
    mov ah,9 ;this is for string display
    int 21h
    
    
    ;here get input
    mov ah,1
    int 21h    
           
               
          
    
    ;sub al,32
    add al,32   
    mov dl,al    
    
      
        
               
                    
    mov ah,2
    int 21h  
    
    mov var,ah              
       
       
                                
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