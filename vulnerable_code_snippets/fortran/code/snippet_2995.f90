program main
    implicit none
    character(len=80) :: buffer
    character(len=50) :: name
    print *, "Enter your name:"
    read *, name
    buffer = "Hello, " // trim(name) // "!"
    print *, buffer
end program main