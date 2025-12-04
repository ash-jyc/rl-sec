program main
    implicit none
    integer, dimension(5) :: numbers
    integer :: i

    do i=1,10
        numbers(i) = i
    end do

    print*, 'Numbers are:', numbers
end program main