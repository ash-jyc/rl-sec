program VulnerableProgram
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    allocate(arr(10))

    do i = 1, 15
        arr(i) = i
    end do

    print*, "Array elements are : "
    do i = 1, 15
        print*, arr(i)
    end do
end program VulnerableProgram