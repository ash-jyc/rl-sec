program integer_overflow
    implicit none
    integer*4 :: i, j, k
    i = 2147483647 ! Maximum value of 4 byte integer
    j = 1
    k = i + j ! This will cause integer overflow
    print*, 'The result after overflow is: ', k
end program integer_overflow