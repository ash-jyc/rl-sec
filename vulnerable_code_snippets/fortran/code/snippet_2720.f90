program main
    implicit none
    integer :: i
    character(len=100) :: buffer
    do i = 1, 200
        buffer(i:i) = 'A'
    end do
end program main