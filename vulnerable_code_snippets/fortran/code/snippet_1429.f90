program integer_overflow
    implicit none
    integer*4 :: i, big_number
    big_number = 2147483647  ! This is the maximum value that can be stored in a 4-byte integer
    do i=1,5
        big_number = big_number + 1
        print*, "Iteration number", i, "Big number is", big_number
    end do
end program integer_overflow