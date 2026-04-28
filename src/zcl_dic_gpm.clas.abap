CLASS zcl_dic_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dic_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data lv_cliente type zde_ejemplo_gpm. "variable con tipo personalizado.
    "lv_cliente = 'Gonzalo'.

    TYPES:BEGIN OF ty_cliente,
          nombre TYPE zde_ejemplo_gpm,
          id TYPE zde_id_gpm,
          edad type zde_edad_gpm,
          telefono type zde_telefono_gpm,
          correo TYPE zde_correo_gpm,
          END of TY_CLIENTE.

   data(ls_ejercicio) = value ty_cliente( nombre = 'Gonzalo' id = 5555 edad = 30 telefono = '+34666666666' correo = 'aasdff@asfdasf.com' ).

   out->write( ls_ejercicio ).
  ENDMETHOD.

ENDCLASS.
