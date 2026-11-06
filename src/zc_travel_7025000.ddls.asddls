@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZTRAVEL_7025'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TRAVEL_7025000
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TRAVEL_7025
  association [1..1] to ZR_TRAVEL_7025 as _BaseEntity on $projection.UUID = _BaseEntity.UUID and $projection.TRAVELID = _BaseEntity.TRAVELID
{
  key UUID,
  key TravelID,
  CustomerID,
  Description,
  Status,
  BeginDate,
  EndDate,
  @Semantics: {
    Amount.Currencycode: 'CurrencyCode'
  }
  FlightPrice,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CurrencyCode,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
