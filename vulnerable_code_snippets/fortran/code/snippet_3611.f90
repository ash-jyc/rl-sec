program main
    implicit none
    character(len=3) :: str
    integer :: i
    
    do i = 1, 5
        str(i:i) = achar(iachar('a')+i-1)
    end do
    
    print*, 'String: ', str
end program main