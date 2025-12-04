program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(5))

    do i = 1, 10
        arr(i) = i
    end do

    print *, arr
end program main