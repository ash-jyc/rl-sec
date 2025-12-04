program main
    implicit none
    character(len=3) :: surname
    character(len=4) :: name
    read(*,*) surname, name
    print*, "Hello, ", trim(surname), " ", trim(name), "!"
end program main