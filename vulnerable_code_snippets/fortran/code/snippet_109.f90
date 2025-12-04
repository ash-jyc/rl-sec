program main
    implicit none
    character(len=10) :: str1, str2
    integer :: i

    do i = 1, 15
        str1(i:i) = 'A'
    end do

    str2 = str1

    print*, str2
end program main