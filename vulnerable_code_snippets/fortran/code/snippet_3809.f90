PROGRAM VULNERABLE_PROGRAM
      INTEGER :: I
      I = 10
      GO TO 10
20    PRINT *, "End of Program"
      STOP
10    IF (I .GT. 0) THEN
        I = I - 1
        GO TO 20
      ELSE
        GO TO 30
      ENDIF
30    PRINT *, "Incorrect flow"
      STOP
      END PROGRAM VULNERABLE_PROGRAM