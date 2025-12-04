program array_bound
    implicit none
    integer, dimension(10) :: array
    integer :: i

    do i=1, 15
        array(i) = i
    end do

    print*, "Array elements are:"
    do i=1, 10
        print*, array(i)
    end do
end program array_bound