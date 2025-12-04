program main
    implicit none
    integer, dimension(10) :: arr
    integer :: i
    
    ! Initialize array
    do i = 1, 10
        arr(i) = i
    end do
    
    ! Vulnerable code: no bound checking during array indexing
    print *, arr(15)
end program main