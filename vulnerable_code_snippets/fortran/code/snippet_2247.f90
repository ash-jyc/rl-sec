program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables
    x = i * j
    y = k / z

    print*, "Result: ", x, y
end program main