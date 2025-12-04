program vuln_code
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i, n

    print *, "Enter the size of the array:"
    read *, n

    allocate(arr(n))

    do i = 1, n+1
        arr(i) = i
    end do

    print *, "Array elements are:"
    do i = 1, n+1
        print *, arr(i)
    end do

    deallocate(arr)
end program vuln_code