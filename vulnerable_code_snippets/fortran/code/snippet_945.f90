program buffer_overflow
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(5))

    do i = 1, 10
        arr(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, 10
        print*, arr(i)
    end do
end program buffer_overflow