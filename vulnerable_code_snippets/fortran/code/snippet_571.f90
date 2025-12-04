program main
    implicit none
    integer :: i, j
    real, dimension(1000000) :: arr
    do i=1,1000000
        arr(i) = i * 3.0
    end do
    print*, "Array filled."
end program main