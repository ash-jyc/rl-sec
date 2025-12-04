program main
    implicit none
    character(len=5) :: str
    integer :: i
    
    do i = 1, 9
        str(i:i) = achar(iachar('a')+i-1)
    end do
    
    print*, "String is: ", str
end program main