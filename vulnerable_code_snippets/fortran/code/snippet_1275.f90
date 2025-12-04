program main
    implicit none
    integer, dimension(3) :: array
    integer :: i
    
    do i=1,5
        array(i) = i
    end do
    
    print*, "Array elements are:"
    do i=1,5
        print*, array(i)
    end do
end program main