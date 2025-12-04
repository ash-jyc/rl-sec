program main
    implicit none
    integer :: i, j
    integer, dimension(10) :: arr
    do i=1,11
        arr(i) = i
    end do
    do i=1,10
        print*, arr(i)
    end do
end program main