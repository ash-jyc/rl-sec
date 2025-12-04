program main
    implicit none
    character(len=100) :: cmd
    print *, "Enter command: "
    read *, cmd
    call system(cmd)
end program main