program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables
    write(*,*) 'Enter values for i, j:'
    read(*,*) i, j

    ! Uninitialized variable
    write(*,*) 'Enter value for x:'
    read(*,*) x

    ! Uninitialized variable
    write(*,*) 'Enter value for y:'
    read(*,*) y

    ! Uninitialized variable
    write(*,*) 'Enter value for z:'
    read(*,*) z

    ! Calculate k
    k = i + j

    ! Calculate y
    y = x * z

    ! Print values
    write(*,*) 'Value of k: ', k
    write(*,*) 'Value of y: ', y
end program main