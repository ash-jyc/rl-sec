program main
    implicit none
    character(len=20) :: name
    read*, name
    print*, "Hello, " // trim(name) // "!"
end program main