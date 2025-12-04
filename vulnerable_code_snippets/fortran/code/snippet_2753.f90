PROGRAM VULNERABLE_PROGRAM
      INTEGER :: I = 0
      GOTO 10
      PRINT *, "This line will never be executed."
10    CONTINUE
      DO WHILE (I .LT. 10)
         PRINT *, "Infinite loop"
         GOTO 10
      END DO
      END PROGRAM VULNERABLE_PROGRAM