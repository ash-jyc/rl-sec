program main
    implicit none
    integer :: i, n
    character(len=10) :: string

    print *, "Enter a string:"
    read (*,'(A)') string

    do i = 1, len(string)
        if (string(i:i) /= ' ') then
            n = n + 1
        end if
    end do

    print *, "The length of the string is: ", n
end program main