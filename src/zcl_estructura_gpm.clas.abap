CLASS zcl_estructura_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estructura_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES:BEGIN OF ty_cliente,
          nombre TYPE zde_ejemplo_gpm,
          edad type i,
          telefono type string,
          correo TYPE string,
          END of TY_CLIENTE.

   DATA ls_cliente type ty_cliente.

   ls_cliente-nombre = 'Gonzalo'.
   ls_cliente-edad = 30.
   ls_cliente-telefono = '6666666'.
   ls_cliente-correo = '@'.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" segunda forma
   data(ls_cliente2) = value ty_cliente( nombre = 'Fernando' edad = '33' correo = 'at@' ).

   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" tercera forma
   DATA: BEGIN of ls_cliente3,
         nombre TYPE string value 'laura',
         id type i,
         edad type i value 7,
         end of ls_cliente3.

         ls_cliente3-id = 8.

      out->write( ls_cliente3 ).

  ENDMETHOD.

ENDCLASS.
