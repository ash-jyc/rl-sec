program main
    implicit none
    character(len=5) :: str1
    character(len=6) :: str2
    read*, str1
    read*, str2
    print*, str1//str2
end program main