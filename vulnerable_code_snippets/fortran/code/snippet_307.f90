program main
    implicit none
    integer :: i
    character(len=5) :: str
    do i = 1, 7
        str(i:i) = achar(i+64)
    end do
    print*, str
end program main