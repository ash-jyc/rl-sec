program main
    implicit none
    character(len=5) :: str
    call read_string(str)
contains
    subroutine read_string(out_str)
        character(len=*), intent(out) :: out_str
        character(len=100) :: temp_str
        read *, temp_str
        out_str = temp_str
    end subroutine read_string
end program main