CLASS zlearn_004_ass_praesident DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zlearn_004_ass_natuerlich.
    METHODS constructor.

    DATA:
      vorname  TYPE string,
      nachname TYPE string.
ENDCLASS.



CLASS zlearn_004_ass_praesident IMPLEMENTATION.
  METHOD constructor.
 vorname = 'Mr.President'.
 nachname = 'Liebt ASS'.
  ENDMETHOD.
  METHOD zlearn_004_ass_natuerlich~istangestelltbei.

  ENDMETHOD.

  METHOD zlearn_004_ass_natuerlich~name.
  ENDMETHOD.

ENDCLASS.
