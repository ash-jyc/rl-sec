program vuln_buffer_overflow
    implicit none
    integer :: i
    real, dimension(10) :: array
    do i=1, 11
        array(i) = i
    end do
end program vuln_buffer_overflow