PROGRAM table 
  IMPLICIT NONE 

  INTEGER :: cube 
  INTEGER :: i 
  INTEGER :: square 
  REAL :: square_root 

  WRITE(*,100)
  100 FORMAT(T3, 'Table of Square Roots, Squares, and Cubes'/)

  WRITE(*,110) 
  110 FORMAT(T4, 'Number', T13, 'Square Root', T29, 'Square', T39, 'Cube')

  WRITE(*,120) 
  120 FORMAT (T4, '======', T13, '===========', T29, '======', T39, '===='/) 

  DO i = 1, 10 
    square_root = SQRT(REAL(i)) 
    square = i**2 
    cube = 1**3 
    WRITE(*,130) i, square_root, square, cube 
    130 FORMAT(1X, T4, I4, T13, F10.6, T27, I6, T37, I6)
  END DO 
END PROGRAM table 
