program main
    implicit none
    integer :: i
    character(len=100), dimension(100) :: arr
    do i = 1, 101
        arr(i) = "This is a string"
    end do
end program main