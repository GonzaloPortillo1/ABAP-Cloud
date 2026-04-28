CLASS zcl_clase_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_clase_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data lv_num type i VALUE 2.
    data lv_num2 TYPE i VALUE 1.

    DATA lv_res type i.
    lv_res = lv_num + lv_num2.
    out->write( lv_res ).






  ENDMETHOD.

ENDCLASS.
