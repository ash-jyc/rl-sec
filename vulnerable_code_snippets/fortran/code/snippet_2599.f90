program main
    implicit none
    integer :: i, j, k
    real :: x(10), y(10)

    ! Uninitialized variable 'k'
    do i = 1, 10
        x(i) = i * 2.0
        y(i) = x(i) * k
    end do

    do i = 1, 10
        print*, "y(", i, ") = ", y(i)
    end do
end program main