program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables i, j, k
    ! These variables are used without being initialized
    ! This can lead to unexpected results
    k = i + j

    ! The same thing happens here
    ! x and y are also used without being initialized
    z = x * y

    print*, "The result is: ", k, z
end program main