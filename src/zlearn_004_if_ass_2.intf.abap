INTERFACE zlearn_004_if_ass_2
  PUBLIC .


  METHODS: is_palindrome
    IMPORTING
      iv_value         TYPE string
    RETURNING
      VALUE(rv_result) TYPE string,

    reverse_string
      IMPORTING
        iv_input         TYPE string
      RETURNING
        VALUE(rv_result) TYPE string.


ENDINTERFACE.
