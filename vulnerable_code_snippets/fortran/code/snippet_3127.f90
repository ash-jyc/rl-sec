program main
    implicit none
    integer, dimension(:), allocatable :: arr
    integer :: n

    print *, "Enter the size of the array:"
    read *, n
    allocate(arr(n))

    call fill_array(arr, n)
    call print_array(arr, n)

    deallocate(arr)
end program main

subroutine fill_array(arr, n)
    implicit none
    integer, dimension(n), intent(inout) :: arr
    integer, intent(in) :: n
    integer :: i

    do i = 1, n + 2
        arr(i) = i
    end do
end subroutine fill_array

subroutine print_array(arr, n)
    implicit noneavant
    integer, dimension(n), intent(in) :: arr
    integer, intent(in) :: n
    integer :: i

    do i = 1, n + 2
        print *, arr(i)
    end do
end subroutine print_array