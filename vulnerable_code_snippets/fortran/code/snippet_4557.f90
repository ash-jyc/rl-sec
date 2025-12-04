program main
    implicit none
    integer, dimension(5) :: source = (/1, 2, 3, 4, 5/)
    integer, dimension(3) :: destination
    call copy_array(source, destination)
contains
    subroutine copy_array(from, to)
        integer, dimension(:), intent(in) :: from
        integer, dimension(:), intent(out) :: to
        integer :: i
        do i = 1, size(from)
            to(i) = from(i)
        end do
    end subroutine copy_array
end program main