CLASS zcl_poo_gpm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA nombre TYPE string.
    METHODS: ladrar RETURNING VALUE(rv_accion) TYPE string.
    Methods: lanzar_pelota RETURNING VALUE(rv_accion) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_poo_gpm IMPLEMENTATION.


  METHOD ladrar.

rv_accion = |{ nombre } dice guau |.

  ENDMETHOD.

  METHOD lanzar_pelota.
rv_accion = |{ nombre } corre por la pelota |.
  ENDMETHOD.

ENDCLASS.
