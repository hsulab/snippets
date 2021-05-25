PROGRAM squares 
  IMPLICIT NONE 

  INTEGER :: i 
  INTEGER, DIMENSION(10) :: number, square 

  DO i = 1, 10 
    number(i) = i 
    square(i) = number(i)**2 
  ENDDO 

  DO i = 1, 10
    WRITE(*,100) number(i), square(i) 
    100 FORMAT('NUMBER = ', I6, ' Square = ', I6)
  ENDDO 
END PROGRAM squares 
