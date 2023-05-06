CLASS zlearn_004_ass_2_pal DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zlearn_004_if_ass_2 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlearn_004_ass_2_pal IMPLEMENTATION.

  METHOD zlearn_004_IF_ASS_2~is_palindrome.
  DATA lv_data type string.

  lv_data = reverse( iv_value ).

   IF iv_value EQ lv_data.
   rv_result = 'true'.
   ELSE.
   rv_result = 'false'.
   ENDIF.
          ENDMETHOD.

    METHOD zlearn_004_if_ass_2~reverse_string.
      rv_result = reverse( iv_input ).
    ENDMETHOD.

ENDCLASS.
