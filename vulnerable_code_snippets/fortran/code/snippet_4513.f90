program main
    implicit none
    integer :: a(10)
    call fillArray(a, 11)
contains
    subroutine fillArray(arr, n)
        integer, intent(in) :: n
        integer, intent(out) :: arr(n)
        integer :: i
        do i=1, n
            arr(i) = i
        end do
    end subroutine fillArray
end program main