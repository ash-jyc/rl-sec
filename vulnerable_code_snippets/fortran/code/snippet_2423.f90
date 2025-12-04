program main
    implicit none
    integer :: i, j
    integer, dimension(10) :: array
    do i=1, 15
        array(i) = i
    end do
    do i=1, 10
        print*, array(i)
    end do
end program main