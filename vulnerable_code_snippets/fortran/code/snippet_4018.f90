program main
    implicit none
    integer, pointer :: p1, p2
    allocate(p1)
    p1 = 10
    p2 => p1
    deallocate(p1)
    print*, p2 
end program main