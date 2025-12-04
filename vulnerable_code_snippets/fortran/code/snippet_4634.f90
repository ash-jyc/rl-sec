program main
    implicit none
    integer, dimension(5) :: data
    integer :: pos = 1
    call storeData(data, pos, 10)
    call storeData(data, pos, 20)
    call storeData(data, pos, 30)
    call storeData(data, pos, 40)
    call storeData(data, pos, 50)
    call storeData(data, pos, 60)
contains
    subroutine storeData(arr, pos, val)
        integer, intent(inout) :: pos
        integer, dimension(5), intent(inout) :: arr
        integer, intent(in) :: val
        arr(pos) = val
        pos = pos + 1
    end subroutine storeData
end program main