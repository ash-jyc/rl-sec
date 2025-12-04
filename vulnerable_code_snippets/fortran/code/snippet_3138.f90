program main
    implicit none
    integer :: size
    integer, allocatable :: vector(:)
    
    print *, "Enter the size of the vector:"
    read *, size
    
    allocate(vector(size))
    
    print *, "Enter the elements of the vector:"
    read *, vector
    
    print *, "The elements of the vector are:"
    print *, vector
end program main