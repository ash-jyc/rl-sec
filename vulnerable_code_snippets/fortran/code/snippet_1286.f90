program main
    implicit none
    integer :: i, j, k
    i = 2147483647  ! Maximum value for integer in Fortran
    j = 1
    k = i + j  ! This will cause integer overflow
    print*, 'The result is ', k
end program main