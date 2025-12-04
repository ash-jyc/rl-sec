program main
    implicit none
    integer, parameter :: max_size = 10
    character(len=40) :: data_array(max_size)
    integer :: i

    ! Read data from a file or network without checking the array size
    do i = 1, 20
        read(*,*) data_array(i)
    end do

    ! Print the data
    do i = 1, 20
        print*, data_array(i)
    end do
end program main