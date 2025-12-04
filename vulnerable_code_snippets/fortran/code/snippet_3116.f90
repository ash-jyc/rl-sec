PROGRAM BUFFER_OVERFLOW
      IMPLICIT NONE
      CHARACTER*200 STRING1
      CHARACTER*100 STRING2
      INTEGER I

C     This is where the potential buffer overflow happens
      READ(*,'(A)') STRING1

C     Copying the string from STRING1 to STRING2
      DO I=1, LEN(STRING1)
         STRING2(I:I) = STRING1(I:I)
      ENDDO

      WRITE(*,'(A)') STRING2
      END PROGRAM BUFFER_OVERFLOW