program buffer_overflow
    implicit none
    integer, dimension(10) :: array
    integer :: i
    do i=1, 15
        array(i) = i
    end do
end program buffer_overflow