program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: num

    print *, "Enter the number of elements:"
    read *, num

    allocate(arr(num))

    print *, "Enter the elements:"
    read *, arr

    print *, "The elements are:"
    print *, arr

    deallocate(arr)
end program main