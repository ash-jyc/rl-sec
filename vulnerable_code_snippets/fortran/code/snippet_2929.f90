program main
    implicit none
    character(len=5) :: str
    integer :: i
    do i = 1, 7
        str(i:i) = achar(i+64)
    end do
    print*, str
end program main