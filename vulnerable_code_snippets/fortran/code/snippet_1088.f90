program buffer_overflow
    implicit none
    integer :: i
    integer, dimension(3) :: arr
    do i = 1, 4
        arr(i) = i
    end do
end program buffer_overflow