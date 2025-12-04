program buffer_overflow
    implicit none
    integer, dimension(10) :: myArray
    integer :: i
    do i=1,15
        myArray(i) = i
    end do
end program buffer_overflow