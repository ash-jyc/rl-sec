program main
  implicit none
  integer, dimension(10) :: array
  integer :: i

  do i=1,15
    array(i) = i
  end do

  print*, array
end program main