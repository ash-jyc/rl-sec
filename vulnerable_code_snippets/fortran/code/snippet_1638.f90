program main
    implicit none
    integer, dimension(2) :: array1
    integer, dimension(3) :: array2
    integer :: i

    do i = 1, 4
        array1(i) = i
        array2(i) = i
    end do

    print*, "Array1: ", array1
    print*, "Array2: ", array2
end program main