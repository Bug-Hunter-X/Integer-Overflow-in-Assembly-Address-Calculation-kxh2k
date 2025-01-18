mov ecx, [some_ecx_value]
; Check for overflow before the calculation
cmp ecx, 0x7FFFFFFF ; Check if ecx is within 32 bit signed integer range
jge overflow_handler

; Safe multiplication and addition
mov eax, ecx
imul eax, 4
add eax, ebx
mov edx, [eax]
;Continue program execution
jmp continue_execution

overflow_handler:
; Handle the overflow condition (e.g., set an error code or terminate gracefully)
mov eax, -1 ; indicate an error
;Handle error
continue_execution:
; ... rest of the program