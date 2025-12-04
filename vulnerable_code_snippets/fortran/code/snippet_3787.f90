program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: i

    ! Allocate 10 elements for the array
    allocate(arr(10))

    ! Assign values to the array
    do i = 1, 15
        arr(i) = i
    end do

    ! Print the array
    do i = 1, 15
        print*, arr(i)
    end do
end program main