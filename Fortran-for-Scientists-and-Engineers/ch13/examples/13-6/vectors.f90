MODULE vectors 
  IMPLICIT NONE 

  TYPE :: vector 
    REAL :: x 
    REAL :: y 
    REAL :: z 
  END TYPE 

  INTERFACE ASSIGNMENT(=) 
    MODULE PROCEDURE array_to_vector 
    MODULE PROCEDURE vector_to_array 
  END INTERFACE 

  INTERFACE OPERATOR(+) 
    MODULE PROCEDURE vector_add 
  END INTERFACE 

  INTERFACE OPERATOR(-) 
    MODULE PROCEDURE vector_subtract 
  END INTERFACE 

  INTERFACE OPERATOR(*) 
    MODULE PROCEDURE vector_times_real 
    MODULE PROCEDURE real_times_vector 
    MODULE PROCEDURE vector_times_int 
    MODULE PROCEDURE int_times_vector 
  END INTERFACE 

  INTERFACE OPERATOR(/) 
    MODULE PROCEDURE vector_div_real 
    MODULE PROCEDURE vector_div_int 
  END INTERFACE 

  INTERFACE OPERATOR(.DOT.)
    MODULE PROCEDURE dot_product 
  END INTERFACE 

  INTERFACE OPERATOR(.CROSS.)
    MODULE PROCEDURE cross_product 
  END INTERFACE 

  ! define implementing functions 
  CONTAINS 
    ! assignment 
    SUBROUTINE array_to_vector(vec_result, array) 
      TYPE(vector), INTENT(OUT) :: vec_result 
      REAL, DIMENSION(3), INTENT(IN) :: array 
      vec_result%x = array(1) 
      vec_result%y = array(2) 
      vec_result%z = array(3) 
    END SUBROUTINE array_to_vector 

    SUBROUTINE vector_to_array(array_result, vec_1) 
      REAL, DIMENSION(3), INTENT(OUT) :: array_result 
      TYPE(vector), INTENT(IN) :: vec_1 
      array_result(1) = vec_1%x 
      array_result(2) = vec_1%y 
      array_result(3) = vec_1%z 
    END SUBROUTINE vector_to_array 

    ! operator + 
    FUNCTION vector_add(vec_1, vec_2) 
      TYPE(vector) :: vector_add 
      TYPE(vector), INTENT(IN) :: vec_1, vec_2 
      vector_add%x = vec_1%x + vec_2%x 
      vector_add%y = vec_1%y + vec_2%y 
      vector_add%z = vec_1%z + vec_2%z 
    END FUNCTION vector_add 

    FUNCTION vector_subtract(vec_1, vec_2) 
      TYPE(vector) :: vector_subtract 
      TYPE(vector), INTENT(IN) :: vec_1, vec_2 
      vector_subtract%x = vec_1%x - vec_2%x 
      vector_subtract%y = vec_1%y - vec_2%y 
      vector_subtract%z = vec_1%z - vec_2%z 
    END FUNCTION vector_subtract 

    ! operator times 
    FUNCTION vector_times_real(vec_1, real_2) 
      TYPE(vector) :: vector_times_real 
      TYPE(vector), INTENT(IN) :: vec_1 
      REAL, INTENT(IN) :: real_2 
      vector_times_real%x = vec_1%x * real_2 
      vector_times_real%y = vec_1%z * real_2 
      vector_times_real%z = vec_1%z * real_2 
    END FUNCTION vector_times_real 

    FUNCTION real_times_vector(real_1, vec_2) 
      TYPE(vector) :: real_times_vector 
      REAL, INTENT(IN) :: real_1 
      TYPE(vector), INTENT(IN) :: vec_2 
      real_times_vector%x = real_1 * vec_2%x 
      real_times_vector%y = real_1 * vec_2%y 
      real_times_vector%z = real_1 * vec_2%z  
    END FUNCTION real_times_vector 

    FUNCTION vector_times_int(vec_1, int_2) 
      TYPE(vector) :: vector_times_int 
      TYPE(vector) , INTENT(IN) :: vec_1 
      INTEGER, INTENT(IN) :: int_2 
      vector_times_int%x = vec_1%x * int_2 
      vector_times_int%y = vec_1%z * int_2 
      vector_times_int%z = vec_1%z * int_2 
    END FUNCTION vector_times_int 

    FUNCTION int_times_vector(int_1, vec_2) 
      TYPE(vector) :: int_times_vector 
      INTEGER, INTENT(IN) :: int_1 
      TYPE(vector), INTENT(IN) :: vec_2 
      int_times_vector%x = int_1 * vec_2%x 
      int_times_vector%y = int_1 * vec_2%y 
      int_times_vector%z = int_1 * vec_2%z  
    END FUNCTION int_times_vector 

    FUNCTION vector_div_real(vec_1, real_2) 
      TYPE(vector) :: vector_div_real 
      TYPE(vector), INTENT(IN) :: vec_1 
      REAL, INTENT(IN) :: real_2 
      vector_div_real%x = vec_1%x / real_2 
      vector_div_real%y = vec_1%z / real_2 
      vector_div_real%z = vec_1%z / real_2 
    END FUNCTION vector_div_real 

    FUNCTION vector_div_int(vec_1, int_2) 
      TYPE(vector) :: vector_div_int 
      TYPE(vector), INTENT(IN) :: vec_1 
      INTEGER, INTENT(IN) :: int_2 
      vector_div_int%x = vec_1%x / REAL(int_2) 
      vector_div_int%y = vec_1%z / REAL(int_2) 
      vector_div_int%z = vec_1%z / REAL(int_2) 
    END FUNCTION vector_div_int 

    ! vector times 
    FUNCTION dot_product(vec_1, vec_2)
      REAL :: dot_product 
      TYPE(vector), INTENT(IN) :: vec_1, vec_2 
      dot_product = vec_1%x*vec_2%x + vec_1%y*vec_2%y & 
        + vec_1%z*vec_2%z 
    END FUNCTION dot_product 

    FUNCTION cross_product(vec_1, vec_2)
      TYPE(vector) :: cross_product 
      TYPE(vector), INTENT(IN) :: vec_1, vec_2 
      cross_product%x = vec_1%y*vec_2%z - vec_1%z*vec_2%y 
      cross_product%y = vec_1%z*vec_2%x - vec_1%x*vec_2%z 
      cross_product%z = vec_1%x*vec_2%y - vec_1%y*vec_2%x 
    END FUNCTION cross_product 

END MODULE vectors 
