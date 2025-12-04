program main
    implicit none
    integer :: i
    character(len=5) :: buffer
    do i = 1, 10
        buffer(i:i) = 'A'
    end do
end program main