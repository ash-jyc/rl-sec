program main
    implicit none
    integer :: i, size
    integer, allocatable :: array(:)

    print*, "Enter the size of the array:"
    read*, size

    allocate(array(size))

    do i = 1, size + 5
        array(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, size + 5
        print*, array(i)
    end do
end program main