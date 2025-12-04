program main
    implicit none
    character(len=5) :: str1
    character(len=10) :: str2
    str2 = 'Hello World!'
    call copy_string(str1, str2)
contains
    subroutine copy_string(dest, src)
        character(*), intent(out) :: dest
        character(*), intent(in) :: src
        dest = src
    end subroutine copy_string
end program main