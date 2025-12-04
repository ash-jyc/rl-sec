program main
    implicit none
    integer, dimension(5) :: array
    integer :: i
    data array /1, 2, 3, 4, 5/
    
    do i = 1, 6
        print *, array(i)
    end do
end program main