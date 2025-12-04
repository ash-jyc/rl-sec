program test
    implicit none
    integer, pointer :: p1, p2
    allocate(p1)
    allocate(p2)
    p1 = 10
    p2 = 20
    print*, "The sum is ", p1 + p2
end program test