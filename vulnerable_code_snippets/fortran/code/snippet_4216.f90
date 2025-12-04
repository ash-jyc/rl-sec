program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i, n

    read*, n
    allocate(arr(n))

    do i = 1, n+5
        arr(i) = i
    end do

    print*, arr
end program main