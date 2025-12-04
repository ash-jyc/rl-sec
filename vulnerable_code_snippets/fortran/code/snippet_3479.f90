program main
    implicit none
    integer :: i
    character(len=32) :: buffer
    do i = 1, 33
        buffer(i:i) = 'A'
    end do
    print*, buffer
end program main