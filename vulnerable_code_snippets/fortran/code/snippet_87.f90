program integer_overflow
    implicit none
    integer::x
    x = 2147483647 + 1
    print*, "This is the result: ", x
end program integer_overflow