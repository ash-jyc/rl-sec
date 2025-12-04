program main
    implicit none
    integer :: i
    character(len=10) :: buffer
    character(len=50) :: overflow
    overflow = "This is an overflow string that will overflow the buffer"
    do i = 1, 50
        buffer(i:i) = overflow(i:i)
    end do
    print*, buffer
end program main