@AbapCatalog.sqlViewName: 'ZCDS928001'
@EndUserText.label:       'Business partner'
@ClientHandling.type: #CLIENT_DEPENDENT
define view zcds_test_9280_01
  as select from ZI_RAP_Booking_9280
{
  key ZI_RAP_Booking_9280.BookingUUID as id,
      ZI_RAP_Booking_9280.FlightPrice,
      ZI_RAP_Booking_9280.FlightDate,
      ZI_RAP_Booking_9280.CurrencyCode
}
