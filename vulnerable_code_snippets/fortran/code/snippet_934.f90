program main
    implicit none
    integer :: i
    character(len=5) :: string
    do i = 1, 10
        string(i:i) = 'A'
    end do
    print*, string
end program main