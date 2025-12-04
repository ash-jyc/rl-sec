program main
    implicit none
    integer, dimension(10) :: myArray
    integer :: i

    do i=1,11
        myArray(i) = i
    end do

    print*, myArray
end program main