*&---------------------------------------------------------------------*
*& Report Z004_ASS_DYNPRO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*


INCLUDE z004_ass_inc_top                        .    " Global Data
TABLES: z004_ass_dic.
INCLUDE z004_ass_inc_o01                        .  " PBO-Modules
INCLUDE z004_ass_inc_i01                        .  " PAI-Modules
* INCLUDE Z004_ASS_INC_F01                        .  " FORM-Routines



START-OF-SELECTION.
  CALL SCREEN 100.
