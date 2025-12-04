program vuln_prog
    implicit none
    integer, dimension(10) :: myArray
    integer :: i

    do i=1, 15
        myArray(i) = i
    end do

    print*, "Array elements are:"
    do i=1, 10
        print*, myArray(i)
    end do
end program vuln_prog