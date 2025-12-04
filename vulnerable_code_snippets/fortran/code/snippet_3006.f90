program main
    implicit none
    integer :: i, j
    logical :: flag = .true.

    ! Vulnerable GOTO statement
    if (flag) then
        goto 10
    end if

    do i = 1, 10
        print *, "This line will be printed"
    10 continue

    ! Unprotected GOTO statement
    do j = 1, 10
        if (j == 5) then
            goto 20
        end if
        print *, j
    end do

    20 print *, "This line will never be printed due to the unprotected GOTO statement"
end program main