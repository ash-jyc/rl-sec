program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables 'x', 'y' and 'z'
    ! These variables will have default zero values
    
    x = y + z
    i = 5 / j

    print*, "The value of x is ", x
    print*, "The value of i is ", i
end program main