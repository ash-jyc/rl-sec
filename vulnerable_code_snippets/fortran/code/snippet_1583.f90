program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(10))

    do i = 1, 20
        arr(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, 20
        print*, arr(i)
    end do
end program main