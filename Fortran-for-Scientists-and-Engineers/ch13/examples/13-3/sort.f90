SUBROUTINE sort(arr,n) 
  !
  IMPLICIT NONE 

  ! data dictionary 
  REAL, DIMENSION(n), INTENT(INOUT) :: arr 
  INTEGER, INTENT(IN) :: n 

  ! data dictionary, local variables 
  INTEGER :: i 
  INTEGER :: iptr 
  INTEGER :: j 
  REAL :: temp 
  WRITE(*,*) n, arr

  ! sort the array 
  outer: DO i = 1, n-1 
    iptr = i
    ! find minimum 
    inner: DO j = i+1, n 
      minval: IF (arr(j) < arr(iptr)) THEN 
        iptr = j 
      END IF minval 
    END DO inner 
    
    ! iptr to minimum 
    swap: IF (i /= iptr) THEN 
      temp = arr(i) 
      arr(i) = arr(iptr) 
      arr(iptr) = temp 
    END IF swap 
  END DO outer 

END SUBROUTINE sort 
