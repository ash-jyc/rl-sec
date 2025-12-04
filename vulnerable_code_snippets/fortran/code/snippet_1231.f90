program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(-10:10))

    do i = -10, 10
        arr(i) = i
    end do

    arr(15) = 100 ! This line can cause heap buffer overflow

    print *, arr
end program main