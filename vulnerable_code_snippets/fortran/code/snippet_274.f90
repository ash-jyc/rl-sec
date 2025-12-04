program main
    implicit none
    character(len=5) :: s1
    character(len=4) :: s2
    s1 = 'Hello'
    s2 = 'World'
    print*, s1//s2
end program main