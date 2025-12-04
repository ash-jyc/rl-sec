program main
    implicit none
    character(len=10) :: buffer
    character(len=50) :: input

    print *, "Enter a string:"
    read (*,'(A)') input

    buffer = input

    print *, "Buffer content: ", buffer
end program main