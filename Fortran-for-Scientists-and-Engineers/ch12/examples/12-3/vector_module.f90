MODULE vector_module ! p550
  IMPLICIT NONE
  TYPE :: vector 
    REAL :: x
    REAL :: y
  END TYPE vector 

  CONTAINS
    TYPE (vector) FUNCTION vector_add(v1,v2)
      IMPLICIT NONE 
      TYPE (vector), INTENT(IN) :: v1
      TYPE (vector), INTENT(IN) :: v2
      vector_add%x = v1%x + v2%x
      vector_add%y = v1%y + v2%y
    END FUNCTION vector_add

    TYPE (vector) FUNCTION vector_sub(v1,v2)
      IMPLICIT NONE 
      TYPE (vector), INTENT(IN) :: v1
      TYPE (vector), INTENT(IN) :: v2
      vector_sub%x = v1%x - v2%x
      vector_sub%y = v1%y - v2%y
    END FUNCTION vector_sub
END MODULE vector_module
