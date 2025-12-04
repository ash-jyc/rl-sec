program main
    implicit none
    character(len=5) :: string1
    character(len=6) :: string2
    string1 = 'Hello'
    string2 = 'World!'
    print*, string1//string2
end program main