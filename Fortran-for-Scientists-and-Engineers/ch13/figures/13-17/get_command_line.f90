PROGRAM get_command_line ! p616
  ! local variables 
  INTEGER :: i 
  CHARACTER(len=128) :: command 
  CHARACTER(len=80) :: arg 

  ! get the program name 
  CALL get_command_argument(0, command) 
  WRITE(*,'(A,A)') 'Program name is: ', TRIM(command) 

  ! get the individual arguments 
  DO i = 1, command_argument_count() 
    CALL get_command_argument(i, arg) 
    WRITE(*,'(A,I2,A,A)') 'Argument ', i, ' is ', TRIM(arg) 
  END DO 

END PROGRAM get_command_line 
