.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 'GOLD_CAMPUS   $'    ;Msg
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV CX, 10
        
        MOV AH, 2
        MOV DL, 48
    
        @LOOP:            ;START LOOP
            LEA DX, NUM
            MOV AH, 9
            INT 21H
            
          ;  INT 21H           ; INTERUPT TO  PRINT
           ;HERE  010
            
            INC DL
            DEC CX
        JNZ @LOOP                    ;END LOOP
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
 END MAIN




