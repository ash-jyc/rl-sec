program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: n, i

    ! Dynamically allocate an array with size from user input
    print *, "Enter the size of the array:"
    read *, n
    allocate(arr(n))

    ! Fill the array with numbers from 1 to n
    do i = 1, n+1000000000
        arr(i) = i
    end do

    ! Print the array
    print *, "Array elements are:"
    do i = 1, n+1000000000
        print *, arr(i)
    end do
end program main