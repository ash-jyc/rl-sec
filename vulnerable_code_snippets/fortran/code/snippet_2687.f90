program main
    implicit none
    integer :: i = 1
    goto 10
    20 print*, "This line will never be executed."
    10 print*, "This line will always be executed."
end program main