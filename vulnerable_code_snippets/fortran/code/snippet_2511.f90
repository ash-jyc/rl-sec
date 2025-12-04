program main
    implicit none
    integer :: i, j
    character(len=10) :: str
    
    print *, "Enter a string:"
    read (*,'(A)') str
    
    do i = 1, len_trim(str)
        j = iachar(str(i:i))
        if (j < 97 .or. j > 122) then
            print *, "Invalid character detected!"
            stop
        end if
    end do
    
    print *, "String is valid."
end program main