program main
    implicit none
    integer :: i
    character(len=5) :: str
    do i = 1, 10
        read(*, '(A)') str
        print*, str
    end do
end program main