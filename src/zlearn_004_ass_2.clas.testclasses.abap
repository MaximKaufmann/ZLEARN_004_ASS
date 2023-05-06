*"* use this source file for your ABAP unit test classes
class test_odata definition final for testing
  duration short
  risk level harmless.

  private section.
    DATA
      cut type ref to zlearn_004_ass_2.

      METHODS: get_entity_set FOR TESTING.
endclass.


class test_odata implementation.
METHOD get_entity_set.
    DATA: lv_http_status TYPE i.
    DATA: lv_status_text TYPE string.
    DATA(lv_url) = |https://obd.in4md-service.de:443/sap/opu/odata/SAP/ZLEARN_004_ASS_2_SRV/zlearn_004_pk_dbSet|.

    DATA: o_client TYPE REF TO if_http_client.
    TRY.

        cl_http_client=>create_by_url( EXPORTING
                                       url     = lv_url
                                     IMPORTING
                                       client  = o_client ).

        o_client->authenticate( username = 'learn-004' password = 'abap420!').
        o_client->send( timeout = if_http_client=>co_timeout_default ).

        o_client->receive( ).

        o_client->response->get_status( IMPORTING
                                          code   = lv_http_status
                                          reason = lv_status_text ).

        IF lv_http_status = 200.

          DATA(lv_result) = o_client->response->get_cdata( ).
          DATA(lv_begin) = substring( val = lv_result off = 0 len = 10 ).
          cl_abap_unit_assert=>assert_equals( act = lv_begin exp = '<feed xmln').
        ELSE.
          cl_abap_unit_assert=>fail(  ).
        ENDIF.


        o_client->close( ).

      CATCH cx_root INTO DATA(e_txt).
        WRITE: / e_txt->get_text( ).
        cl_abap_unit_assert=>fail(  ).
    ENDTRY.
  endmethod.

endclass.
