program main
   implicit none
   integer, dimension(:), allocatable :: data_array
   integer :: i

   ! Allocate memory for the array
   allocate(data_array(10))

   ! Initialize the array
   do i = 1, 15
      data_array(i) = i
   end do

   ! Print the array
   do i = 1, 10
      print*, 'Element', i, ': ', data_array(i)
   end do
end program main