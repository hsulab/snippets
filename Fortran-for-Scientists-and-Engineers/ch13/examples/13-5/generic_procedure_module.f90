MODULE generic_procedure_module 
  IMPLICIT NONE 

  ! declare type vector 
  TYPE :: vector 
    REAL :: x 
    REAL :: y 
  CONTAINS 
    GENERIC :: add => vector_plus_vector, vector_plus_scalar 
    PROCEDURE, PASS :: vector_plus_vector 
    PROCEDURE, PASS :: vector_plus_scalar 
  END TYPE vector 

  CONTAINS 
    TYPE (vector) FUNCTION vector_plus_vector(this, v2)
      ! add self to a vector 
      IMPLICIT NONE 

      ! variables 
      CLASS(vector), INTENT(IN) :: this 
      CLASS(vector), INTENT(IN) :: v2 

      ! add vectos 
      vector_plus_vector%x = this%x + v2%x 
      vector_plus_vector%y = this%y + v2%y 

    END FUNCTION vector_plus_vector 

    TYPE (vector) FUNCTION vector_plus_scalar(this, s) 
      IMPLICIT NONE 

      CLASS(vector), INTENT(IN) :: this 
      REAL, INTENT(IN) :: s 

      ! 
      vector_plus_scalar%x = this%x + s 
      vector_plus_scalar%y = this%y + s 

    END FUNCTION vector_plus_scalar 
END MODULE generic_procedure_module 
