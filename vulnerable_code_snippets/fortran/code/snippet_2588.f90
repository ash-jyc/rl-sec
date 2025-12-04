program main
    implicit none
    integer :: x
    integer :: y
    integer :: sum

    x = 2147483647  ! Maximum value of integer in Fortran
    y = 1
    
    sum = x + y  ! This will cause an overflow as the result is larger than the maximum value of integer

    print*, "The sum is ", sum
end program main