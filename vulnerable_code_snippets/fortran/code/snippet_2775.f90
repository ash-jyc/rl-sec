program main
    implicit none
    character(len=10) :: str
    integer :: i
    do i = 1, 20
        str(i:i) = 'A'
    end do
    print*, str
end program main