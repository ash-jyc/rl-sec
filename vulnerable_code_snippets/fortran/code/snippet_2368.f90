program main
    implicit none
    character(len=5) :: string1
    character(len=4) :: string2
    read*, string1
    read*, string2
    print*, string1//string2
end program main