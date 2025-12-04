program goToDemo
    implicit none
    integer :: i, j
    real :: x(10, 10)
    do i = 1, 10
        do j = 1, 10
            x(i, j) = i*j
            if (x(i, j) > 50) then
                goto 100
            end if
        end do
    end do
    100 write(*,*) "Value greater than 50 found at position ", i, j
end program goToDemo