.MODEL SMALL 
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,2 ;THIS IS FOR CHARACTER OUTPUT MODE
    MOV CX,256 ;IT WILL CONTROL  LOOP
    MOV DL,0 ; START FROM 0 WHICH IS NULL
    
    PRINT_LABEL:
    INT 21H
    INC DL ;INCREMENT DL BY 1
    DEC CX ;DECREMENT CX BY 1
    JNZ PRINT_LABEL  ; JUMMP TO LABEL
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN