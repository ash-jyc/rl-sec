program main
    implicit none
    integer, dimension(5) :: array
    integer :: i

    do i = 1, 10
        array(i) = i
    end do

    print*, "Array: ", array
end program main