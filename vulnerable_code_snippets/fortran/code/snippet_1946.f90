program main
    implicit none
    character(len=5) :: str1
    character(len=6) :: str2
    integer :: i

    str1 = 'Hello'
    str2 = 'World!'

    do i = 1, len(str2)
        str1(i:i) = str2(i:i)
    end do

    print*, str1
end program main