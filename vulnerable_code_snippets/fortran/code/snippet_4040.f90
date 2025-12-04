program main
    implicit none
    integer :: i, j
    real :: x(10), y(10)
    call random_number(x)
    do i = 1, 10
        if (x(i) > 0.5) then
            j = j + 1
            y(j) = x(i)
        end if
    end do
end program main