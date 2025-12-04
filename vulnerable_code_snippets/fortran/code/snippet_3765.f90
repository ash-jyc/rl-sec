program main
    implicit none
    integer :: i
    character(len=100), dimension(:), allocatable :: str_arr
    allocate(str_arr(10))
    do i = 1, 11
        read(*, '(A)') str_arr(i)
    end do
    print*, str_arr
end program main