CLASS zcl_objeto_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_objeto_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

DATA(lo_perro) = new zcl_poo_gpm(  ). "llamamos a la clase donde se ha creado el objeto
"out->write( lo_perro ).

if lo_perro is bound.

    lo_perro->nombre = 'Dobby'.

    out->write( lo_perro->ladrar(  ) ). "llamamos a la funcionalidad de ladrar, hecho en la clase poo_gpm

    lo_perro->lanzar_pelota(
    receiving rv_accion = data(lv_accion)
    ).
    out->write( lv_accion ).
endif.

  ENDMETHOD.

ENDCLASS.
