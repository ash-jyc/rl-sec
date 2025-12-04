program main
    implicit none
    integer, dimension(5) :: array
    integer :: i
    do i=1,6
        array(i) = i
    end do
    print*, array
end program main