program main
    implicit none
    character(len=10) :: input
    character(len=50) :: output
    integer :: i
    output = ''
    print *, 'Enter your name:'
    read (*,'(A)') input
    do i = 1, len_trim(input)
        output(i:i) = input(i:i)
    end do
    print *, 'Hello, '//output//'!'
end program main