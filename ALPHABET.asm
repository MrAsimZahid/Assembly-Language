.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 'ALPHABETS       $'    ;Msg
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX, NUM
        MOV AH, 9
        INT 21H
        
        MOV CX, 13
        
        MOV AH, 2
        MOV DL, 65
    
        @LOOP:            ;START LOOP
            INT 21H           ; INTERUPT TO  PRINT
           ;HERE  010
            
            ADD DL, 2
            DEC CX
        JNZ @LOOP                    ;END LOOP
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
 END MAIN