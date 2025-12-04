program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    do i = 1, 1000000000
        allocate(arr(i))
        deallocate(arr)
    end do
end program main