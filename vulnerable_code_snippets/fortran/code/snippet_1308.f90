program main
    implicit none
    integer :: i
    character(len=10), dimension(:), allocatable :: str_arr
    allocate(str_arr(5))
    do i = 1, 6
        str_arr(i) = "ABCDEFGHIJ"
    end do
    print*, str_arr
end program main