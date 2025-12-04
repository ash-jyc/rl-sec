program main
    implicit none
    integer, dimension(5) :: myArray
    integer :: i

    do i = 1, 10
        myArray(i) = i
    end do

    print*, "Values in the array:"
    print*, myArray
end program main