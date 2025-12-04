program main
    implicit none
    character(len=100) :: user_input
    read(*,'(A)') user_input
    write(*,user_input) "Hello, World!"
end program main