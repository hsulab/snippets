! This program is illegal, because the program 
! attempts to modify the protected value t1%z.
MODULE test_module 
  TYPE :: test_type 
    REAL :: x, y, z 
    PROTECTED :: z 
  END TYPE test_type 
END MODULE test_module 

PROGRAM test 
  USE test_module 
  TYPE(test_type) :: t1, t2 
  t1%x = 10. 
  t1%y = -5. 
  t2%x = -2. 
  t2%y = 7. 
  t1%z = t1%x * t2%y 
END PROGRAM test 
