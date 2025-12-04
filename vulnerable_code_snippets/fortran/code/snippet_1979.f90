program main
    implicit none
    integer :: i
    character(len=50) :: buffer
    do i = 1, 60
        buffer(i:i) = 'A'
    end do
end program main