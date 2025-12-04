program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: n, i

    n = 1000000000 ! Imagine this value comes from user input

    allocate(arr(n))

    do i=1, n
        arr(i) = i
    end do

    print*, "Array elements are: ", arr
end program main