using app.CompanyCodes as cc from '../db/schema';
// using s4.api as s4 from '../db/api-srv';

//Expose Entity as OData
service CompanyCodes_service {
    @odata.draft.enabled
    entity CompanyCodes            as projection on cc.CompanyCodes;

    entity Addresses               as projection on cc.Addresses;
    entity PersonnelNumebrs        as projection on cc.PersonnelNumbers;
    // entity srv_CompanyCode  as projection on s4.srv_CompanyCode;
}
