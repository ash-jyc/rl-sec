program main
    implicit none
    character(len=10) :: str
    integer :: i
    
    str = 'Hello World'
    do i = 1, len(str) + 5
        print *, str(i:i)
    end do
end program main