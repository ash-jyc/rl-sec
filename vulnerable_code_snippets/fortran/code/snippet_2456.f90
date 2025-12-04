program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables i, j, k
    ! These variables are used without being initialized
    k = i + j

    ! Uninitialized variable x
    ! This variable is used without being initialized
    y = sqrt(x)

    ! Uninitialized variable z
    ! This variable is used without being initialized
    print*, "The value of k is ", k
    print*, "The square root of y is ", z
end program main