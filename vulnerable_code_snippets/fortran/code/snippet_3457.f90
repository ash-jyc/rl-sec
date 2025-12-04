program main
    implicit none
    character(len=5) :: surname
    character(len=10) :: fullname
    integer :: i
    surname = 'Smith'
    fullname = 'JohnSmith'
    do i = 1, len(surname)
        fullname(i+5) = surname(i)
    end do
    print*, fullname
end program main