program buffer_overflow
    implicit none
    integer :: i
    character(len=10) :: buffer
    open(unit=10, file='data.txt', status='old', action='read')
    read(10, '(A)') buffer
    close(10)
end program buffer_overflow