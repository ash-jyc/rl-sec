program vuln_prog
    implicit none
    character(len=80) :: buffer
    integer :: n
    n = 100
    call get_command_argument(1, buffer, n)
    print*, "Hello, ", trim(buffer), "!"
end program vuln_prog