program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables i, j, k
    ! These variables are used without being initialized
    x = i + j
    y = i - k
    z = i * k

    print*, "x = ", x
    print*, "y = ", y
    print*, "z = ", z
end program main