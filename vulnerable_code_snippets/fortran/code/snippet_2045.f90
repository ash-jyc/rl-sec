program main
    implicit none
    integer :: i, j
    real :: x(10)
    do i = 1, 11
        x(i) = i
    end do
    print *, x
end program main