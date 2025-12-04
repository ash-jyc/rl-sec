program main
    implicit none
    integer :: i, n
    integer, dimension(:), allocatable :: arr

    print*, "Enter the size of array:"
    read*, n

    allocate(arr(n))

    do i = 1, n+1
        arr(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, n+1
        print*, arr(i)
    end do
end program main