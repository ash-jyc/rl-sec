program buffer_overflow
    implicit none
    integer, dimension(5) :: array
    integer :: i

    do i=1,6
        array(i) = i
    end do

    print*, "Array elements are:"
    do i=1,5
        print*, array(i)
    end do
end program buffer_overflow