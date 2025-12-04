program main
    implicit none
    integer, dimension(5) :: myArray
    integer :: i
    
    do i=1,6
        myArray(i) = i
    end do
    
    print*, "Array elements are:"
    do i=1,6
        print*, myArray(i)
    end do
end program main