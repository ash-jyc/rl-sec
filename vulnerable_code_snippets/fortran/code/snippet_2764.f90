program main
    implicit none
    integer, dimension(5) :: arr
    integer :: i

    do i = 1, 10
        arr(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, 10
        print*, arr(i)
    end do
end program main