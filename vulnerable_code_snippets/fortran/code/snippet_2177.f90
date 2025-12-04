program main
    implicit none
    integer, dimension(:), allocatable :: myArray
    integer :: i

    allocate(myArray(10))

    do i=1,15
        myArray(i) = i
    end do

    print*, myArray
end program main