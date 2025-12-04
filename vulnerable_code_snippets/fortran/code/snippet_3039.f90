program main
    implicit none
    integer :: i
    character(len=10) :: buffer
    do i = 1, 20
        read(*, '(A)') buffer
        print *, buffer
    end do
end program main