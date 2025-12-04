PROGRAM VULNERABLE_PROGRAM
      INTEGER :: I = 0
      GOTO 10
9     PRINT *, "I is", I
      I = I + 1
      IF (I < 10) THEN
         GOTO 9
      END IF
10    GOTO 9
      END PROGRAM VULNERABLE_PROGRAM