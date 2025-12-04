program main
    implicit none
    integer :: i, j, k
    real :: x, y, z
    call some_function(x, y, z)
    print*, "Result: ", x + y + z
contains
    subroutine some_function(a, b, c)
        real, intent(out) :: a, b, c
        a = 1.0
        b = 2.0
        ! c is not initialized here
    end subroutine some_function
end program main