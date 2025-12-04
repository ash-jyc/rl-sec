program main
    implicit none
    character(len=100) :: user_input
    read(*,'(A)') user_input
    write(*,user_input) 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
end program main