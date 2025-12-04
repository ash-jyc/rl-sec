program UnsafeFortranProgram
    implicit none
    integer :: i, j
    real :: x(10), y(10)
    do i=1, 11
        x(i) = i
        y(i) = i*2
    end do
    do i=1, 10
        print*, 'x(', i, ') = ', x(i)
        print*, 'y(', i, ') = ', y(i)
    end do
end program UnsafeFortranProgram