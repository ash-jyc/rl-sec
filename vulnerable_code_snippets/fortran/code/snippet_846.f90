program integer_overflow
    implicit none
    integer :: big_number
    big_number = 2147483647 + 1
    print*, "Big number is ", big_number
end program integer_overflow