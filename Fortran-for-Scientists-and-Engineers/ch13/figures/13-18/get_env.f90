PROGRAM get_env ! p617
  ! local variables 
  INTEGER :: length 
  INTEGER :: status 
  CHARACTER(len=80) :: value 

  ! get environment variable 
  CALL get_environment_variable('HOME', value, length, status) 

  WRITE(*,*) 'Get "homepath" environment variable:'
  WRITE(*,'(A,I6)') 'Status = ', status 
  IF (status <= 0) THEN 
    WRITE (*,'(A,A)') 'Value = ', TRIM(value) 
  END IF 

END PROGRAM get_env 
