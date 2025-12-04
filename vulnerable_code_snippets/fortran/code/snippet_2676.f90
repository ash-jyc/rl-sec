program main
    implicit none
    integer :: i, size
    integer, allocatable :: array(:)
    size = 10000000000 ! A very large number
    allocate(array(size))
    do i=1,size
        array(i) = i
    end do
    print*, "Array elements: ", array
end program main