*"* use this source file for your ABAP unit test classes
CLASS ltcl_test DEFINITION FOR TESTING RISK LEVEL HARMLESS DURATION SHORT FINAL.
  PRIVATE SECTION.
    DATA cut TYPE REF TO zlearn_004_ass_2_pal.
    METHODS:
      setup,
      test_empty_string FOR TESTING,
      test_word FOR TESTING,
      test_capitalized_word FOR TESTING,
      test_sentence_with_punctuation FOR TESTING,
      test_palindrome FOR TESTING,
      test_even_sized_word FOR TESTING,
      test_erweiterung1 for TESTING,
      test_erweiterung2 for testing,
      test_erweiterung3 for testing,
      test_erweiterung4 for testing.
ENDCLASS.
CLASS ltcl_test IMPLEMENTATION.
  METHOD setup.
    cut = NEW zlearn_004_ass_2_pal( ).
  ENDMETHOD.
  METHOD test_empty_string.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( '' )
      exp = '' ).
  ENDMETHOD.
  METHOD test_word.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( 'robot' )
      exp = 'tobor' ).
  ENDMETHOD.
  METHOD test_capitalized_word.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( 'Ramen' )
      exp = 'nemaR' ).
  ENDMETHOD.
  METHOD test_sentence_with_punctuation.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( `I'm hungry!` )
      exp = `!yrgnuh m'I` ).
  ENDMETHOD.
  METHOD test_palindrome.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( 'racecar' )
      exp = 'racecar' ).
  ENDMETHOD.
  METHOD test_even_sized_word.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~reverse_string( 'drawer' )
      exp = 'reward' ).
  ENDMETHOD.
    METHOD test_erweiterung1.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~is_palindrome( 'Anna' )
      exp = 'false' ).
  ENDMETHOD.
      METHOD test_erweiterung2.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~is_palindrome( 'Ein Esel lese nie' )
      exp = 'false' ).
  ENDMETHOD.
      METHOD test_erweiterung3.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~is_palindrome( 'Reittier' )
      exp = 'false' ).
  ENDMETHOD.
      METHOD test_erweiterung4.
    cl_abap_unit_assert=>assert_equals(
      act = cut->zlearn_004_if_ass_2~is_palindrome( 'anna' )
      exp = 'true' ).
  ENDMETHOD.
ENDCLASS.
