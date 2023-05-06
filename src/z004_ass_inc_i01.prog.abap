*&---------------------------------------------------------------------*
*& Include          Z004_ASS_INC_I01
*&---------------------------------------------------------------------*
"PAI MODUL


MODULE user_command_0100 INPUT.
   IF sy-ucomm = 'BACK'.
       LEAVE PROGRAM.
   ENDIF.
   IF sy-ucomm = 'SAVE'.
     INSERT Z004_ASS_DIC.
   ENDIF.
ENDMODULE.
