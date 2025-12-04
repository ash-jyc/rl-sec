program main
    implicit none
    integer, dimension(10) :: arr
    integer :: i
    
    do i=1, 15
        arr(i) = i
    end do
    
    print*, 'Array elements are:', arr
end program main