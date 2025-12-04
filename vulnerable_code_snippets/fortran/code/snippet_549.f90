program UnhandledError
    implicit none
    integer :: i, j, k
    real :: x
    
    ! This division operation might cause an error if j is zero
    ! but there is no error handling mechanism
    i = 10
    j = 0
    k = i / j
    
    ! This sqrt operation might cause an error if x is negative
    ! but there is no error handling mechanism
    x = -1.0
    x = sqrt(x)
end program UnhandledError