program main
    implicit none
    integer :: i, j
    real, dimension(10) :: array
    
    do i=1,11
        array(i) = i
    end do
    
    print*, "Array elements are:"
    do j=1,10
        print*, array(j)
    end do
end program main