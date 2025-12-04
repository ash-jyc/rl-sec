program buffer_overflow
    implicit none
    integer :: arr(5)
    integer :: i
    do i=1,6
        arr(i) = i
    end do
end program buffer_overflow