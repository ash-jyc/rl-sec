program buffer_overrun
    implicit none
    integer, dimension(10) :: arr
    integer :: i

    do i=1, 11
        arr(i) = i
    end do

    print*, "Array elements are:"
    do i=1, 11
        print*, arr(i)
    end do
end program buffer_overrun