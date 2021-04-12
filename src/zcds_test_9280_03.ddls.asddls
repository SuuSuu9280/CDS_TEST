@AbapCatalog.sqlViewName: 'ZCDS928003'
@EndUserText.label:       'FULL OUTER JOIN'
@ClientHandling.type: #CLIENT_DEPENDENT
define view ZCDS_TEST_9280_03
  as
select from zcds_tab_9280_01 as a left outer join zcds_tab_9280_02 as b
  on  b.seq1 = a.seq1 and
      b.seq2 = a.seq2
{
  a.seq1 as Key1,
  a.seq2 as Key2,
  a.data1 as Data1,
  a.data2 as Data2,
  b.data3 as Data3,
  b.data4 as Data4
}
union
select from zcds_tab_9280_01 as a right outer join zcds_tab_9280_02 as b
  on  b.seq1 = a.seq1 and
      b.seq2 = a.seq2
{
  b.seq1 as Key1,
  b.seq2 as Key2,
  a.data1 as Data1,
  a.data2 as Data2,
  b.data3 as Data3,
  b.data4 as Data4
}
