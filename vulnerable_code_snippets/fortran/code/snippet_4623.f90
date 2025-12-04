program main
   implicit none
   integer, dimension(:), allocatable :: my_array
   integer :: i

   allocate(my_array(10))

   do i = 1, 15
      my_array(i) = i
   end do

   print*, 'Array values:', my_array
end program main