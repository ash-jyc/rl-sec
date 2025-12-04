program main
    implicit none
    character(len=1024) :: buffer
    read '(a)', buffer
    print *, buffer
end program main