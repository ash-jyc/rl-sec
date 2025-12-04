PROGRAM VULNERABLE_GOTO
      INTEGER :: I = 3
      GOTO (10, 20, 30), I
   10 PRINT *, "I am at 10"
      STOP
   20 PRINT *, "I am at 20"
      STOP
   30 PRINT *, "I am at 30"
      END PROGRAM VULNERABLE_GOTO