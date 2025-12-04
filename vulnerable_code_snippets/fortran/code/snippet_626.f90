program main
    implicit none
    character(len=5) :: str
    character(len=50) :: longStr
    longStr = "This is a very long string that will cause a buffer overflow!"
    str = longStr ! This line will cause a buffer overflow because str is too small to hold longStr
end program main