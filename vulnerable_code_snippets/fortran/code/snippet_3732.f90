program main
    implicit none
    character(len=5) :: str
    str = "This is a long string that will cause a buffer overflow"
    print*, str
end program main