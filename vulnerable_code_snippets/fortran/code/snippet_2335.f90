program buffOverflow
    implicit none
    integer :: i
    character(len=10) :: buffer
    character(len=50) :: input
    read *, input
    do i = 1, len(input)
        if (i > len(buffer)) then
            exit
        end if
        buffer(i:i) = input(i:i)
    end do
    print *, buffer
end program buffOverflow