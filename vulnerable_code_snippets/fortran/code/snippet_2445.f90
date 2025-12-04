program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! The variable 'x' is uninitialized here
    y = x * 2.0

    ! The variables 'j' and 'k' are uninitialized here
    z = real(j) / real(k)

    print*, "The value of y is ", y
    print*, "The value of z is ", z
end program main