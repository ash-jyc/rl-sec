program main
    implicit none
    integer :: i, j, k
    real :: x, y, z

    ! Uninitialized variables i, j, k
    write(*,*) 'Values of i, j, k before assignment: ', i, j, k

    ! Assigning values to x, y, z
    x = 10.5
    y = 20.6
    z = x + y

    ! Printing the values
    write(*,*) 'Values of x, y, z after assignment: ', x, y, z
end program main