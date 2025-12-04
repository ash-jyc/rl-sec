program main
    implicit none
    integer :: i, n
    integer, dimension(:), allocatable :: arr
    
    print*, "Enter the size of array:"
    read*, n
    
    allocate(arr(n))
    
    do i = 1, n+5
        arr(i) = i
    end do
    
    do i = 1, n+5
        print*, arr(i)
    end do
end program main