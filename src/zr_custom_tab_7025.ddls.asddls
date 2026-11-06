@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCUSTOM_TAB_7025'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CUSTOM_TAB_7025
  as select from ZCUSTOM_TAB_7025
{
  key uuid as UUID,
  key customer_id as CustomerID,
  customername as Customername,
  address as Address,
  status as Status,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
