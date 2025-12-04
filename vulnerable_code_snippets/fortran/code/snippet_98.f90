program main
    implicit none
    integer :: i, j
    goto 100
    print *, "This line will never be executed"
100 continue
    do i=1,10
        do j=1,10
            print *, "i = ", i, "j = ", j
        end do
    end do
end program main