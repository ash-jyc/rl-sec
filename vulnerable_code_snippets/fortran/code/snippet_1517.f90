program main
    implicit none
    integer :: i
    character(len=10) :: str
    read(*,'(a)') str
    do i = 1, len_trim(str)
        write(*,*) str(i:i)
    end do
end program main