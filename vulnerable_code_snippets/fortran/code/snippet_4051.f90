program main
   implicit none
   character(len=5) :: str1
   character(len=6) :: str2
   str1 = 'Hello'
   str2 = 'World!'
   print*, str1//str2
end program main