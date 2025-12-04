program main
    implicit none
    integer :: i
    character(len=40) :: buffer
    do i = 1, 50
        buffer(i:i) = 'A'
    end do
    print*, buffer
end program main