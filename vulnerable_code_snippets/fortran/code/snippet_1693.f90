program main
    implicit none
    integer :: i, j
    character(len=100) :: buffer
    do i = 1, 1000000000
        write(buffer, *) i
        if (i == 1000000000) then
            print *, "Done!"
        end if
    end do
end program main