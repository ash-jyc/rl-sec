program main
    implicit none
    integer :: i, j, k
    real :: x(10), y(10)

    ! Uninitialized variable 'k'
    do i = 1, 10
        x(i) = y(i) / k
    end do

    print*, x
end program main