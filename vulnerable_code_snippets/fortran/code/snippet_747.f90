program main
    implicit none
    character(len=10), dimension(:), allocatable :: str_arr
    integer :: i

    allocate(str_arr(5))

    do i = 1, 6
        str_arr(i) = "Hello"
    end do

    print *, str_arr
end program main