program bufferOverflow
    implicit none
    integer :: i
    character(len=80) :: buffer
    character(len=50) :: overFlowData = 'This is a string that will cause a buffer overflow!'

    do i = 1, 10
        call get_command_argument(i, buffer)
        if (buffer == overFlowData) then
            print *, "Buffer Overflow Detected!"
            stop
        end if
    end do
end program bufferOverflow