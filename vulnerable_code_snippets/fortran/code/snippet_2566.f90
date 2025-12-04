program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables 'x', 'y' and 'z'
    read*, i, j
    k = i + j
    x = x + y
    z = z + 10
    print*, k, x, z
end program main