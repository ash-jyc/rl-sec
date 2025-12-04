program main
    implicit none
    integer, parameter :: n = 10
    integer :: i, array(n)
    do i = 1, 2*n
        array(i) = i
    end do
end program main