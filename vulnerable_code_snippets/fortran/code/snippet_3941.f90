program main
    implicit none
    integer :: i, j
    integer, dimension(:), allocatable :: array
    print*, "Enter the size of the array"
    read*, i
    allocate(array(i))
    do j=1,i+5
        array(j) = j
    end do
    print*, "Array elements are ", array
    deallocate(array)
end program main