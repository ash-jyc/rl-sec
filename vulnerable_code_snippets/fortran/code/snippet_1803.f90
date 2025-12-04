program main
    implicit none
    integer :: i
    character(len=1024) :: buffer
    do i = 1, 1025
        buffer(i:i) = 'A'
    end do
end program main