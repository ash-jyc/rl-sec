program main
    implicit none
    character(len=5) :: str1
    character(len=5) :: str2
    character(len=5) :: str3
    integer :: i

    str1 = 'Hello'
    str2 = 'World'

    do i = 1, len(str1)
        str3(i:i) = str1(i:i)
    end do

    do i = 1, len(str2)
        str3(i:i) = str2(i:i)
    end do

    print*, str3
end program main