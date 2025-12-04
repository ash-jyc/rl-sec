program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(-10:10))

    do i = -10, 20
        arr(i) = i
    end do

    print*, arr
end program main