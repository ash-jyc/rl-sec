program main
    implicit none
    character(len=50) :: buffer1, buffer2
    integer :: i

    buffer1 = 'Hello, World!'
    buffer2 = 'This is a test.'

    do i = 1, len_trim(buffer1)
        buffer2(i+len_trim(buffer2):i+len_trim(buffer2)) = buffer1(i:i)
    end do

    print*, buffer2
end program main