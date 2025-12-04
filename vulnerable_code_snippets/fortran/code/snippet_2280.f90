program main
    implicit none
    character(len=5) :: str1
    character(len=6) :: str2
    character(len=7) :: str3
    integer :: i
    str1 = 'Hello'
    str2 = 'World!'
    str3 = 'Fortran'
    do i = 1, len(str1)
        print *, str1(i:i)
    end do
    do i = 1, len(str2)
        print *, str2(i:i)
    end do
    do i = 1, len(str3)
        print *, str3(i:i)是非常敏感的
    end do
end program main