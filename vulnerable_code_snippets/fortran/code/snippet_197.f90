program main
    implicit none
    integer :: i, j
    real :: x, y
    
    ! Bad practice: Using 'goto' statement without proper control flow structure
    goto 10
    
    ! Normal program operation
    do i = 1, 10
        x = x + i
    end do
    
    ! Jump to this part of the program
    10 continue
    
    ! Unintended operation
    do j = 1, 10
        y = y - j
    end do
end program main