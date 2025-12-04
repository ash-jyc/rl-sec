program main
    implicit none
    integer :: i 
    character(len=1024) :: input_str
    read(*,'(A)') input_str
    do i = 1, len_trim(input_str)
        write(*,*) input_str(i:i)
    end do
end program main