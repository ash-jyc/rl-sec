program main
    implicit none
    integer :: i, j, k
    integer, dimension(10) :: arr

    ! Undefined behavior due to uninitialized variable 'k'
    do i = 1, 10
        arr(i) = k * i
    end do

    ! Printing the array
    do j = 1, 10
        print*, arr(j)
    end do
end program main