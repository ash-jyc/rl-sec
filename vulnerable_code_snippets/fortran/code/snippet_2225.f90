program VulnerableBufferOverflow
    implicit none
    integer :: i
    character(len=10) :: string
    
    do i = 1, 20
        string(i:i) = 'A'
    end do
    
    print*, string
end program VulnerableBufferOverflow