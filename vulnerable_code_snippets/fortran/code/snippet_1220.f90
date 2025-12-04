program main
    implicit none
    character(len=10) :: name
    read*, name
    print*, "Hello, " // trim(name) // "!"
end program main