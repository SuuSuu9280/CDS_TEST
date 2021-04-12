CLASS zcds_test_9280_generate_record DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcds_test_9280_generate_record IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    " テーブルAのレコード
    lcl_table_a=>create_record(  ).
    out->write( |テーブルAに{ sy-dbcnt }レコードを登録しました| ).

    " テーブルBのレコード
    lcl_table_b=>create_record(  ).
    out->write( |テーブルBに{ sy-dbcnt }レコードを登録しました| ).
  ENDMETHOD.
ENDCLASS.
