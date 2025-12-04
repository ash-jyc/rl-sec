program main
    implicit none
    character(len=5) :: surname
    print *, "Enter your surname:"
    read *, surname
    print *, "Hello, " // surname // "!"
end program main