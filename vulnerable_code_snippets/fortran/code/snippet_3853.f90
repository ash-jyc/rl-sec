program vuln_prog
    implicit none
    character(len=10) :: buffer
    character(len=30) :: user_input

    print *, "Enter some text:"
    read *, user_input

    if (len(user_input) > 10) then
        buffer = user_input(1:10)
    else
        buffer = user_input
    end if

    print *, "Buffer content: ", buffer
end program vuln_prog