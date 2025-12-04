program main
   implicit none
   character(len=10) :: str
   integer :: i
   str = 'hello'
   do i = 1, 10
      str(i:i) = char(mod(i, 26) + 96)
   end do
   print*, str
end program main