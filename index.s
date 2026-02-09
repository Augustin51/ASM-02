global main

main: 
    mov rdi, 6
    call write_digit
    ret

write_digit:
    push rbp
    mov rbp, rsp

    add rdi, 48
    push rdi

    mov rax, 1  
    mov rdi, 1     
    mov rsi, rsp   
    mov rdx, 1     
    syscall

    pop rbp
    pop rbp
    ret

