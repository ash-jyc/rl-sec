program main
    implicit none
    integer :: i
    character(len=10) :: buffer
    do i = 1, 20
        buffer(i:i) = 'A'
    end do
    print*, buffer
end program main