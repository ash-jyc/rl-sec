program main
    implicit none
    character(len=5) :: surname
    character(len=10) :: fullname
    surname = 'Smith'
    fullname = 'John'//surname
    print*, fullname
end program main