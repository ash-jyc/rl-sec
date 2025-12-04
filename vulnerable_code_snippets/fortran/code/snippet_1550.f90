program main
    implicit none
    integer, parameter :: array_size = 10
    integer :: array(array_size)
    integer :: i

    do i=1, array_size + 5
        array(i) = i
    end do

    print*, "Array elements are:"
    print*, array
end program main