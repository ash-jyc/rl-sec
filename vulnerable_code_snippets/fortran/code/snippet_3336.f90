program main
    implicit none
    integer, dimension(3) :: arr
    integer :: i
    
    do i=1, 4
        arr(i) = i
    end do
    
    print*, "Array elements are:"
    do i=1, 4
        print*, arr(i)
    end do
end program main