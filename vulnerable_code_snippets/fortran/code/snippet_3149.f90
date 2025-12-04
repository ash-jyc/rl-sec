program main
    implicit none
    character(len=80) :: name
    call get_name(name)
    print*, "Hello ", name
contains
    subroutine get_name(name)
        implicit none
        character(len=80) :: name
        read*, name
    end subroutine get_name
end program main