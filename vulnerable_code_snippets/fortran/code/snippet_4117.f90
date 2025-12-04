program main
    implicit none
    integer :: i, j
    real :: result
    
    print*, 'Enter two numbers to divide'
    read*, i, j

    result = i / j

    print*, 'Result: ', result
end program main