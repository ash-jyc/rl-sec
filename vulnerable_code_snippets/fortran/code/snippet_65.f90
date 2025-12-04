program main
    implicit none
    integer :: i, j, k
    real :: x
    print *, "Enter two integers:"
    read *, i, j
    k = i + j
    x = i / j
    print *, "Sum is ", k
    print *, "Ratio is ", x
end program main