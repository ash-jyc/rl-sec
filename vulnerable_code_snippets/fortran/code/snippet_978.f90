program array_vuln
    implicit none
    integer, dimension(2) :: array
    integer :: i

    do i=1,4
        array(i) = i
    end do

    print*, "Array elements are: ", array
end program array_vuln