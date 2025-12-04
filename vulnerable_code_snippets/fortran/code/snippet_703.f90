program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables i, j, k
    k = i + j

    ! Uninitialized variable x
    y = sqrt(x)

    ! Uninitialized variable z
    print *, 'The value of k is ', k
    print *, 'The square root of y is ', z
end program main