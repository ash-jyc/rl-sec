program main
    implicit none
    integer :: i, j, k
    real :: x
    real, dimension(10) :: array

    ! Uninitialized variable 'x'
    do i = 1, 10
        array(i) = x * i
    end do

    ! Uninitialized variable 'j'
    do j = 1, 10
        print*, array(j)
    end do
end program main