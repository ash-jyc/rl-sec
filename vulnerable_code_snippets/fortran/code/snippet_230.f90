program integer_overflow
    implicit none
    integer*4 :: i, j, k
    i = 2147483647  ! Maximum limit of integer*4
    j = 1
    k = i + j       ! Here, the result of this operation will exceed the maximum limit of integer*4
    print*, 'Result of overflow: ', k
end program integer_overflow