PROGRAM test_generic_procedures ! p592
  USE generic_procedure_module 
  IMPLICIT NONE 
  TYPE(vector) :: v1 
  TYPE(vector) :: v2
  REAL :: s

  ! Get the first vector
  WRITE (*,*) 'Enter the first vector (x,y):' 
  READ (*,*) v1%x, v1%y

  ! Get the second vector
  WRITE (*,*) 'Enter the second vector (x,y):' 
  READ (*,*) v2%x, v2%y

  ! Get a scalar
  WRITE (*,*) 'Enter a scalar:' 
  READ (*,*) s
  
  ! Add the vectors
  WRITE (*,1000) v1%add(v2)
  1000 FORMAT('The sum of the vectors is (',F8.2,',',F8.2,')')

  ! Subtract the points
  WRITE (*,1010) v1%add(s)
  1010 FORMAT('The sum of the vector and scalar is (',F8.2,',',F8.2,')') 
END PROGRAM test_generic_procedures
