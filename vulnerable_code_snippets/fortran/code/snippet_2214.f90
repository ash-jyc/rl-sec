program main
    implicit none
    character(len=5) :: name
    read*, name
    print*, "Hello, " // name // "!"
end program main