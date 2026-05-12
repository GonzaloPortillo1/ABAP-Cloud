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

    DATA lv_num TYPE i VALUE 2.
    DATA lv_num2 TYPE i VALUE 1.

    DATA lv_res TYPE i.
    lv_res = lv_num + lv_num2.
    " out->write( lv_res ).

    DATA: lv_name  TYPE string VALUE 'dobby',
          lv_name2 TYPE string VALUE 'aguacate',
          lv_numb  TYPE i VALUE 8,
          lv_ej    TYPE i VALUE 26.
    CONSTANTS lc_num TYPE i VALUE 3.

    "out->write( | { lv_name } { lv_name2 } { lv_numb } | ).

    "IF lv_name = 'dobby'.
    " out->write( lv_name2 ).
    " ELSE.
    "  out->write( lv_numb + lc_num ).
    "ENDIF.

    DATA lv_ejemplo TYPE string VALUE 'Hello World'.
    "out->write( lv_ejemplo ).

    "IF lc_ej = lv_numb * lc_num OR lv_name = 'dobb'.
    " out->write( lv_name2 ).
    " ELSEIF lc_ej = lv_numb + lc_num.
    "   out->write( lv_name ).
    "ELSE.
    "   out->write( 'Todo mal' ).
    " ENDIF.

    "CASE lv_numb.
    " WHEN 3.
    " out->write( 'a' ).
    " WHEN 5.
    " out->write( 'b' ).
    " WHEN 9.
    "out->write( 'c' ).
    " WHEN OTHERS.
    "out->write( 'd' ).

    "  ENDCASE.

    " Ejercicio clculadora

    DATA: lv_nombre    TYPE string VALUE 'Paco', "Definimos las variables principales
          lv_operacion TYPE string VALUE '+'.

    DATA: lv_op1       TYPE i VALUE 6, "Definimos las variables para las operaciones.
          lv_op2       TYPE i VALUE 0,
          lv_resultado TYPE i.

    IF lv_nombre = 'Paco'. "Aseguramos que el usuario sea el correcto.
      CASE lv_operacion.    "Definimos la cuenta según lo que haya en lv_operacion
        WHEN '+'.
          lv_resultado = lv_op1 + lv_op2.
        WHEN '-'.
          lv_resultado = lv_op1 - lv_op2.
        WHEN '*'.
          lv_resultado = lv_op1 * lv_op2.
        WHEN '/'.
          IF lv_op2 <> 0.   "Limitamos que no se pueda dividir entre cero.
            lv_resultado = lv_op1 / lv_op2.
          ELSE.
            out->write( 'No se puede dividir por cero' ).
            RETURN.     "Si el valor en el divisor es 0, salimos del if completo.
          ENDIF.
        WHEN OTHERS.
          out->write( 'Operación no reconocida. Usa +, -, * o /' ).
          RETURN. "Si la operación no se reconoce, salimos del if completo.

      ENDCASE.
      out->write( |Resultado: { lv_op1 } { lv_operacion } { lv_op2 } = { lv_resultado }| ). "Mostramos el resultado con la operación.
    ELSE.
      out->write( 'usuario desconocido' ). "Si el usuario no es paco, no puede usarlo.
    ENDIF.


    WHILE lv_op1 >= 4.
      out->write( lv_op1 ).
      lv_op1 = lv_op1 - 1.
    ENDWHILE.








  ENDMETHOD.

ENDCLASS.
