

; Assembly language code for 



.MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT  DB  '\The counting from 0 to 9 is : $\'
    LOWER   DB  '\Lower Case : $\'
    Upper   DB  '\Upper Case : $\'
    
 .CODE
 
    
 
   MAIN PROC
     MOV AX, @DATA                ; initialize DS 
     MOV DS, AX

     CALL COUNT                   ; calling count printing function
     
;     CALL UPPERCASE
         
     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 
  ; Counting 0-9 printing, function defination
    COUNT PROC
         LEA DX, PROMPT               ; load and print PROMPT 
         MOV AH, 9
         INT 21H
    
         MOV CX, 10                   ; initialize CX
    
         MOV AH, 2                    ; set output function  
         MOV DL, 48                   ; set DL with 0
    
         @LOOP:                       ; loop label
           INT 21H                    ; print character
    
           INC DL                     ; increment DL to next ASCII character
           DEC CX                     ; decrement CX
         JNZ @LOOP                    ; jump to label @LOOP if CX is 0
    
       RET
    
    COUNT ENDP                           
    
    
   ;
       
   UPPERCASE PROC
        LEA DX, UPPER
        MOV AH, 9
        INT 21H
        
        MOV CX, 27
        
        MOV AH, 2
        MOV DL, 65
    
        @LOOOP:                 ;START LOOP
            INT 21H             ;INTERUPT TO  PRINT
           ;HERE  010               
            
            ADD DL
            DEC CX
        JNZ @LOOOP                    ;END LOOP
      RET  
    
   UPPERCASE ENDP
    
    
    
    
    
END MAIN 