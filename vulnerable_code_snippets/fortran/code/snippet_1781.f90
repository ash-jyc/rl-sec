program main
    implicit none
    character(len=10) :: buffer
    integer :: i
    character(len=30) :: user_input

    print *, "Enter your message:"
    read (*,'(A)') user_input

    do i = 1, len(user_input)
        buffer(i:i) = user_input(i:i)
    end do

    print *, "Your message: ", buffer
end program main