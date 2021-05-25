PROGRAM polar2rect 
  IMPLICIT NONE 

  ! local variables 
  REAL, PARAMETER :: pi=3.14
  REAL, DIMENSION(2) :: polar, rect 

  ! input 
  WRITE(*,'(A)') 'Enter polar coordinate: ' 
  READ(*,*) polar(1), polar(2) 

  ! conversion 
  rect(1) = polar(1) * COS(polar(2)/180.0*pi) ! default, rad 
  rect(2) = polar(1) * SIN(polar(2)/180.0*pi)

  ! output 
  WRITE(*,'(2F10.2)') rect(1), rect(2) 

END PROGRAM polar2rect 
