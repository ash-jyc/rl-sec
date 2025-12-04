program integer_overflow
    implicit none
    integer*4 :: i, j, k
    i = 2147483647  ! Maximum value of a 4 byte integer
    j = 1
    k = i + j       ! This will result in an underflow
    print*, "The result is ", k
end program integer_overflow