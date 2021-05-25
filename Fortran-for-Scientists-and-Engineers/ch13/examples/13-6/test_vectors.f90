PROGRAM test_vectors ! p597
  USE vectors 
  IMPLICIT NONE 

  REAL, DIMENSION(3) :: array_out 
  TYPE(vector) :: vec_1, vec_2 

  ! test assignments 
  vec_1 = (/1.,2.,3./)
  array_out = vec_1 
  WRITE(*,1000) vec_1, array_out 
  1000 FORMAT(' Test assignments: ',/, & 
    ' vec_1 = ', 3F8.2, /, & 
    ' array_out = ', 3F8.2) 

  ! test addition and subtraction 
  vec_1 = (/ 10., 20., 30. /)
  vec_2 = (/ 1., 2., 3. /)
  WRITE (*,1010) vec_1, vec_2, vec_1 + vec_2, vec_1 - vec_2 
  1010 FORMAT (/' Test addition and subtraction: ',/, & 
    ' vec_1 = ', 3F8.2,/, & 
    ' vec_2 = ', 3F8.2,/, & 
    ' vec_1 + vec_2 = ', 3F8.2,/, & 
    ' vec_1 - vec_2 = ', 3F8.2)

  ! test multiplication by a scalar 
  vec_1 = (/ 1., 2., 3. /)
  WRITE (*,1020) vec_1, 2.*vec_1, vec_1*2., 2*vec_1, vec_1*2 
  1020 FORMAT (/' Test multiplication by a scalar: ',/, &
  ' vec_1 = ', 3F8.2,/, & 
  ' 2. * vec_1 = ', 3F8.2,/, &
  ' vec_1 * 2. = ', 3F8.2,/, & 
  ' 2 * vec_1 = ', 3F8.2,/, &
  ' vec_1 * 2 = ', 3F8.2) 

  ! test division by a scalar 
  vec_1 = (/ 10., 20., 30. /)
  WRITE (*,1030) vec_1, vec_1/5., vec_1/5
  1030 FORMAT (/' Test division by a scalar: ',/, &
  ' vec_1 = ', 3F8.2,/, & 
  ' vec_1 / 5. = ', 3F8.2,/, &
  ' vec_1 / 5 = ', 3F8.2)

  ! test dot product 
  vec_1 = (/ 1., 2., 3. /)
  vec_2 = (/ 1., 2., 3. /)
  WRITE (*,1040) vec_1, vec_2, vec_1 .DOT. vec_2 
  1040 FORMAT (/' Test dot product: ',/, &
  ' vec_1 = ', 3F8.2,/, & 
  ' vec_2 = ', 3F8.2,/, & 
  ' vec_1 .DOT. vec_2 = ', 3F8.2)

  ! test cross product.
  vec_1 = (/ 1., -1., 1. /)
  vec_2 = (/ -1., 1., 1. /)
  WRITE (*,1050) vec_1, vec_2, vec_1 .CROSS. vec_2 
  1050 FORMAT (/' Test cross product: ',/, &
  ' vec_1 = ', 3F8.2,/, & 
  ' vec_2 = ', 3F8.2,/, & 
  ' vec_1 * vec_2 = ', 3F8.2)

END PROGRAM test_vectors 
