program main
    implicit none
    integer :: i, j
    real :: x, y
    x = 10.0
    y = 20.0
    i = 1
    j = 2
    goto 100
    50 if (x > y) then
        print*, "x is greater than y"
    else
        print*, "y is greater than x"
    end if
    stop
    100 if (i < j) then
        goto 50
    else
        goto 200
    end if
    200 print*, "Program ended"
end program main