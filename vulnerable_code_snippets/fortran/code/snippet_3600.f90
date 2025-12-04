program main
    implicit none
    integer, dimension(5) :: arr
    integer :: i
    do i=1,6
        arr(i) = i
    end do
    print*, arr
end program main