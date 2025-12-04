program main
    implicit none
    character(len=20) :: buffer
    integer :: i
    print *, "Enter your string:"
    read (*,'(A)') buffer
    do i = 1, len(buffer)
        print *, buffer(i:i)
    end do
end program main