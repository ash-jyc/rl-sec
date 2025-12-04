program integer_overflow
    implicit none
    integer*4 :: i, j, k
    i = 2147483647  ! Maximum value for a 4-byte integer
    j = 1
    k = i + j       ! This will cause an overflow
    print*, 'The result of the addition is: ', k
end program integer_overflow