@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCUSTOM_TAB_7025'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CUSTOM_TAB_7025
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CUSTOM_TAB_7025
  association [1..1] to ZR_CUSTOM_TAB_7025 as _BaseEntity on $projection.UUID = _BaseEntity.UUID and $projection.CUSTOMERID = _BaseEntity.CUSTOMERID
{
  key UUID,
  key CustomerID,
  Customername,
  Address,
  Status,
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
