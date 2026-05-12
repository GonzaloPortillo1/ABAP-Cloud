CLASS zcl_funciones_caracteres DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_funciones_caracteres IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.

*STRLEN
DATA(lv_num) = strlen( 'Gonzalo' ). "Cuenta el numero de letras.
data(lv_var) = 'Experis experis'.
data(lv_num3) = 'Experis experis'.
*COUNT
lv_num = count(  val = lv_var sub = 'ex' ). "Saca el número de veces que aparece la letra g en la variable.
out->write( lv_num ).

*COUNT ANY OF (IGUAL QUE COUNT, PERO NO DIFERENCIA ENTRE MAYUS Y MINUS
lv_num = count_any_of(  val = lv_var sub = 'exp' ).
out->write( lv_num ).
lv_num = count_any_not_of(  val = lv_var sub = 'ex' ).
out->write( lv_num ).



*FIND (devuelve la posición en la que se encuentra la primera vez que encuentra el valor, empieza en 0

lv_num = find(  val = lv_num3 sub = 'E' ).
out->write( lv_num ).

*FIND_ANY_OF (Busca cualquier cosa individual que haya en el conjunto que indicas

lv_num = find_any_of(  val = lv_num3 sub = 'is' ). "Devuelve la primer i que ha encontrado. Si la s estuviera antes, devolvería la s
out->write( lv_num ).
  ENDMETHOD.

ENDCLASS.
