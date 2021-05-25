PROGRAM interface_example ! p578
  IMPLICIT NONE 
  ! declare interface to subroutine "sort" 
  INTERFACE 
    SUBROUTINE sort(a,n)
      IMPLICIT NONE 
      REAL, DIMENSION(n), INTENT(INOUT) :: a 
      INTEGER, INTENT(IN) :: n 
    END SUBROUTINE sort 
  END INTERFACE 
  
  ! data dictionary 
  REAL, DIMENSION(6) :: array = [1., 5., 3., 2., 6., 4.]
  INTEGER :: nvals = 6 

  ! call sort 
  WRITE (*,*) array
  CALL sort(array, nvals) 

  ! write out 
  WRITE (*,*) array

END PROGRAM interface_example 
