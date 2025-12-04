program main
    implicit none
    character(len=5) :: small_string
    character(len=100) :: large_string
    integer :: i

    ! Assigning a string larger than the allocated memory
    large_string = "This is a very long string that will cause a buffer overflow if not handled properly."

    ! Copying the large string into the smaller one
    small_string = large_string

    print*, "Small String: ", small_string
end program main