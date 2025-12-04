program main
    implicit none
    character(len=4) :: string1
    character(len=6) :: string2
    read*, string1
    read*, string2
    print*, string1//string2
end program main