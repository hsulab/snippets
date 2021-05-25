PROGRAM exec7 
  CONTAINS 
  RECURSIVE FUNCTION sum_1_n(n) RESULT(sum) ! why?
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: n
    INTEGER :: sum
    INTEGER :: sum_1_n
    IF ( n > 1 ) THEN 
      sum = n + sum_1_n(n-1)
    ELSE
      sum = 1
    END IF
  END FUNCTION
END PROGRAM exec7

! it has no definition on sum and sum_1_n