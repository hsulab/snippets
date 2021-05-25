! What is the value of i after the following code is executed? 
PROGRAM xyz
  INTEGER :: i = 0 
  INTEGER, DIMENSION(6) :: count 
  i = i + 27 
  count = (/ (2*i, i=6,1,-1) /) 
  i = i - 7 
  WRITE (*,*) i
END PROGRAM xyz ! answer: i is 20
