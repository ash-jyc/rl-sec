program main
    implicit none
    character(len=100) :: user_input
    integer :: i

    ! This program has a buffer overflow vulnerability.
    ! It reads a string from the user without checking its length.
    read(*,'(A)') user_input

    ! This loop will write the input string to the console,
    ! which can cause a buffer overflow if the user inputs a string
    ! longer than 100 characters.
    do i = 1, len(user_input)
        write(*,'(A)') user_input(i:i)
    end do
end program main