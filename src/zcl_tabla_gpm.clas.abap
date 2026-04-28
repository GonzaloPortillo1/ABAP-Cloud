CLASS zcl_tabla_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tabla_gpm IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

 TYPES:BEGIN OF ty_cliente,
          nombre TYPE zde_ejemplo_gpm,
          id type i,
          edad type i,
          telefono type string,
          correo TYPE string,
          END of TY_CLIENTE.

  data ls_cliente type ty_cliente.
  data lt_cliente type table of ty_cliente.

  ls_cliente-nombre = 'Gonzalo'.
   ls_cliente-edad = 30.
   ls_cliente-id = 222.
   ls_cliente-telefono = '6666666'.
   ls_cliente-correo = '@'.

   insert ls_cliente into lt_cliente index 1.

    ls_cliente-nombre = 'Mateo'.
   ls_cliente-edad = 33.
   ls_cliente-id = 112.
   ls_cliente-telefono = '655666666'.
   ls_cliente-correo = 'at'.

insert ls_cliente into table lt_cliente.

insert value #(
nombre = 'jjjj'
edad = 22
id = 44
telefono = '000000'
correo = 'reara'
) into table lt_cliente.


" insert initial line into table lt_cliente     para generar una línea en blanco

   "out->write( lt_cliente ).


data lt_cliente2 like lt_cliente. "para copiar la tabla anterior (tienes que duplicar el contenido aún).

insert lines of lt_cliente into table lt_cliente2. "para copiar el contenido

"out->write( lt_cliente2 ).


loop AT lt_cliente into ls_cliente.   "Cogemos de la tabla los datos para ver en la estructura la fila que queramos
out->write( ls_cliente-nombre ).
endloop.

data lv_P type p length 8 decimals 2 value '202501.10'.
out->write( lv_P ).


  ENDMETHOD.

ENDCLASS.
