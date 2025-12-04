program main
    implicit none
    character(len=10) :: str
    integer :: i
    character(len=10) :: str2
    do i = 1, 15
        str = "Hello"
        write(str2, '(A5, I2)') str, i
        print *, str2
    end do
end program main