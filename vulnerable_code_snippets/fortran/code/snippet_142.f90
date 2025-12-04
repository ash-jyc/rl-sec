PROGRAM VULNERABLE_PROGRAM
      INTEGER :: I = 0
      GOTO 10
20    PRINT *, "I is even."
      GOTO 30
10    I = I + 1
      IF (MOD(I, 2) .EQ. 0) THEN
         GOTO 20
      ENDIF
      PRINT *, "I is odd."
30    CONTINUE
      END PROGRAM VULNERABLE_PROGRAM