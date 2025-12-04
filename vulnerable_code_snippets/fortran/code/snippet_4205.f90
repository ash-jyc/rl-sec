program overflow
    implicit none
    integer :: i
    integer, dimension(3) :: array
    do i=1, 4
        array(i) = i
    end do
end program overflow