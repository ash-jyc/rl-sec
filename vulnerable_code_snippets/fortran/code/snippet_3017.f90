program main
    implicit none
    character(len=5) :: str
    integer :: i
    do i = 1, 10
        str(i:i) = 'A'
    end do
    print*, str
end program main