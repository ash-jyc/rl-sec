program main
    implicit none
    integer, dimension(10) :: myArray
    integer :: i

    do i = 1, 15
        myArray(i) = i
    end do

    print*, "The values of myArray are:"
    print*, myArray
end program main