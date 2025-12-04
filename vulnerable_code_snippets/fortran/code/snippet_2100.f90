program main
    implicit none
    integer :: i, n
    integer, allocatable :: a(:)

    print*, "Enter the size of array:"
    read*, n

    allocate(a(n)) ! Vulnerable line

    do i = 1, n+5
        a(i) = i
    end do

    print*, "Array elements are:"
    do i = 1, n+5
        print*, a(i)
    end do
end program main