INTERFACE zlearn_004_ass_natuerlich
  PUBLIC .

  METHODS name
    RETURNING VALUE(rv_name) TYPE string.

  METHODS istAngestelltBei
    IMPORTING iv_org        TYPE ref to ZLEARN_004_ASS_ORGANISATION
    RETURNING VALUE(rv_org) TYPE boolean.

ENDINTERFACE.
