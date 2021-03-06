@AbapCatalog.sqlViewName: 'ZCDS928001'
@EndUserText.label:       'UNION'
@ClientHandling.type: #CLIENT_DEPENDENT
define view zcds_test_9280_01
  as select from zcds_tab_9280_01 as a
{
  a.seq1 as Key1,
  a.seq2 as Key2,
  a.data1 as Data1,
  a.data2 as Data2
}
union
select from zcds_tab_9280_02 as b
{
  b.seq1 as Key1,
  b.seq2 as Key2,
  b.data3 as Data1,
  b.data4 as Data2
}
