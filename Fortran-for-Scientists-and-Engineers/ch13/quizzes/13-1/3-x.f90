! What is the value of z that is written out after the following code 
! is executed? Explain how the value is produced. 
PROGRAM x ! p575
  REAL :: z = 10.
  TYPE position 
    REAL :: x, y, z
  END TYPE position 
  TYPE (position) :: xyz 
  xyz = position(1., 2., 3.)
  WRITE (*,*) z
  CONTAINS 
    REAL FUNCTION fun1(x)
    REAL, INTENT(IN) :: x 
    fun1 = (x + xyz%x) / xyz%z 
    END FUNCTION fun1 
END PROGRAM 
! z wrote out is 10.