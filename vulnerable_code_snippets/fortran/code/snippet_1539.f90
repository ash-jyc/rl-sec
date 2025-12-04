PROGRAM VULNERABLE_PROGRAM
      IMPLICIT NONE
      INTEGER*2 :: i, j, k
      
      i = 32767
      j = 1
      k = i + j

      WRITE(*,*) 'The result is ', k

      END PROGRAM VULNERABLE_PROGRAM