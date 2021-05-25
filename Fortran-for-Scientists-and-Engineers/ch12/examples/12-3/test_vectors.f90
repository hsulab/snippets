PROGRAM test_vectors
  USE vector_module
  IMPLICIT NONE
  TYPE (vector) :: v1
  TYPE (vector) :: v2

  WRITE (*,*) 'Enter the first vector (x,y):'
  READ (*,*) v1%x, v1%y

  WRITE (*,*) 'Enter the second vector (x,y):'
  READ (*,*) v2%x, v2%y

  WRITE (*,1000) vector_add(v1,v2)
  1000 FORMAT('The sum of the points is (',F8.2,',',F8.2,')')

  WRITE (*,2000) vector_sub(v1,v2)
  2000 FORMAT('The diff of the points is (',F8.2,',',F8.2,')')
END PROGRAM test_vectors
