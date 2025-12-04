program main
    implicit none
    integer :: i, j
    real, dimension(10) :: array
    do i=1, 15
        array(i) = i
    end do
    print*, "Array elements are:"
    do j=1, 15
        print*, array(j)
    end do
end program main