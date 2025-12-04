program main
    implicit none
    integer :: i, j, k
    real :: x, y, z
    logical :: flag

    ! Uninitialized variable 'flag'
    if (flag) then
        x = i + j
    else
        y = i - j
    end if

    z = x / y

    print*, "The result is ", z
end program main