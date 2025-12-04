program buffer_overflow
    implicit none
    integer :: i
    character(len=5) :: str
    do i = 1, 10
        str(i:i) = 'A'
    end do
    print*, str
end program buffer_overflow