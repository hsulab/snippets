PROGRAM sort3
  ! sort array with a dataset file input 
  IMPLICIT NONE 

  ! data dictionary, constants 
  INTEGER, PARAMETER :: MAX_SIZE = 10

  ! data dictionary, variables 
  REAL, DIMENSION(MAX_SIZE) :: a 
  LOGICAL :: exceed = .FALSE. 

  CHARACTER(len=20) :: filename 
  INTEGER :: i 
  CHARACTER(len=80) :: msg 
  INTEGER :: nvals = 0 
  INTEGER :: status 
  REAL :: temp 

  ! get the name of file 
  WRITE (*,*) 'Enter the file name with the data to be sorted:' 
  READ (*,1000) filename 
  1000 FORMAT(A20) 

  ! open 
  OPEN(UNIT=9, FILE=filename, STATUS='OLD', ACTION='READ', &
    IOSTAT=status, IOMSG=msg)

  ! was open successful 
  fileopen: IF (status == 0) THEN 
    DO 
      READ(9, *, IOSTAT=status) temp 
      IF (status /= 0) EXIT 
      nvals = nvals + 1 
      size: IF (nvals <= MAX_SIZE) THEN 
        a(nvals) = temp 
      ELSE 
        exceed = .TRUE. 
      END IF size 
    END DO 

    ! was the array size exceeded? 
    toobig: IF (exceed) THEN 
      WRITE(*,1010) nvals, MAX_SIZE 
      1010 FORMAT('Maximum array size exceeded: ', I6, '>', I6)
    ELSE 
      ! call sort 
      CALL sort(a, nvals) 

      ! write out 
      WRITE(*,'(A)') 'The sorted output data values are: '
      WRITE(*,'(3X,F10.4)') (a(i), i=1, nvals)
    END IF toobig 
  ELSE fileopen 
    ! else file open failed 
    WRITE(*,1050) TRIM(msg) 
    1050 FORMAT('File open failed--error = ', A)
  END IF fileopen 

END PROGRAM sort3 

SUBROUTINE sort(arr,n) 
  !
  IMPLICIT NONE 

  ! data dictionary 
  INTEGER, INTENT(IN) :: n 
  REAL, DIMENSION(n), INTENT(INOUT) :: arr 

  ! data dictionary, local variables 
  INTEGER :: i 
  INTEGER :: iptr 
  INTEGER :: j 
  REAL :: temp 

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
