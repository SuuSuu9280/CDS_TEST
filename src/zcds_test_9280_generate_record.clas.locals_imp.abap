*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


class lcl_common DEFINITION.
  PUBLIC SECTION.
    types:
      typ_t_table_a type STANDARD TABLE OF zcds_tab_9280_01
        WITH DEFAULT KEY
      ,
      typ_t_table_b type STANDARD TABLE OF zcds_tab_9280_02
        WITH DEFAULT KEY
    .
ENDCLASS.

class lcl_table_a definition INHERITING FROM lcl_common final.

  public section.
    CLASS-METHODS create_record.

  protected section.

  private section.

endclass.

class lcl_table_a implementation.


  METHOD create_record.
    data(data_records) = VALUE typ_t_table_a(
      ( seq1 = 1 seq2 = 1 data1 = '1-1_1' data2 = '2-1_1' )
      ( seq1 = 1 seq2 = 2 data1 = '1-1_2' data2 = '2-1_2' )
      ( seq1 = 2 seq2 = 1 data1 = '1-2_1' data2 = '2-2_1' )
      ( seq1 = 2 seq2 = 2 data1 = '1-2_2' data2 = '2-2_2' )
      ( seq1 = 3 seq2 = 1 data1 = '1-3_1' data2 = '2-3_1' )
      ( seq1 = 3 seq2 = 2 data1 = '1-3_2' data2 = '2-3_2' )
    ).

    " レコードを削除
    DELETE FROM zcds_tab_9280_01.

    " レコードを登録
    INSERT zcds_tab_9280_01 FROM TABLE @data_records.
  ENDMETHOD.

endclass.

class lcl_table_b definition INHERITING FROM lcl_common final.

  public section.
    CLASS-METHODS create_record.

  protected section.

  private section.

endclass.

class lcl_table_b implementation.


  METHOD create_record.
    data(data_records) = VALUE typ_t_table_b(
      ( seq1 = 1 seq2 = 1 data3 = '3-1_1' data4 = '4-1_1' )
      ( seq1 = 1 seq2 = 2 data3 = '3-1_2' data4 = '4-1_2' )
      ( seq1 = 2 seq2 = 1 data3 = '1-2_1' data4 = '2-2_1' )
      ( seq1 = 2 seq2 = 2 data3 = '1-2_2' data4 = '2-2_2' )
      ( seq1 = 4 seq2 = 1 data3 = '3-4_1' data4 = '4-4_1' )
      ( seq1 = 4 seq2 = 2 data3 = '3-4_2' data4 = '4-4_2' )
    ).

    " レコードを削除
    DELETE FROM zcds_tab_9280_02.

    " レコードを登録
    INSERT zcds_tab_9280_02 FROM TABLE @data_records.
  ENDMETHOD.

endclass.
