program main
    implicit none
    integer :: size
    integer, allocatable :: array(:)

    print*, "Enter the size of the array"
    read*, size

    allocate(array(size))  ! Vulnerable line

    print*, "Allocated array of size", size
end program main