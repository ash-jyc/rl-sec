program main
    implicit none
    character(len=100) :: user_input
    call get_command_argument(1, user_input)
    print*, "Hello, " // user_input // "!"
end program main