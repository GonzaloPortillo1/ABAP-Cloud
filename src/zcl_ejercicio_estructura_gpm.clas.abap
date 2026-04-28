CLASS zcl_ejercicio_estructura_gpm DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
 INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ejercicio_estructura_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

 DATA lv_name type string value 'pac'.
 DATA lv_op1 type i.
 data lv_op2 type i.

 if lv_name = 'paco'.
    lv_op1 = 18 / 3.
    lv_op2 = 27 * 8.
     out->write( lv_op1 ).
     out->write( lv_op2 ).
    else.
    out->write( 'no eres paco' ).
 endif.


  ENDMETHOD.

ENDCLASS.
