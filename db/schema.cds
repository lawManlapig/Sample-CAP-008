/*We name the cds File as 'schema' to determine that this is the
entities section */

//Namespace
namespace app.CompanyCodes;

//Reusables & External APIs
using {
    managed,
    Language
} from '@sap/cds/common';
// using {s4.api.srv_CompanyCode} from './api-srv';

//Aspects -- Parang Include Structure ito na pwede mo isaksak sa mga entity mo.
// keyword: aspect

//Entities
entity CompanyCodes : managed {
        @UI.Hidden
    key id              : UUID;

        @mandatory
        @assert.unique
        companycode     : String(4);
        companycodename : String(50);
        city            : String(20);
        country         : String(20);
        currency        : String(3);
        language        : Language;
        addressnumber   : Int32;
}

entity Addresses {
        @UI.Hidden
    key id              : UUID;
        addressnumber   : Association to CompanyCodes;
        personnelnumber : Int32;
        emailaddress    : String(50);
}

entity PersonnelNumbers {
        @UI.Hidden
    key id              : UUID;
        personnelnumber : Association to Addresses;
        lastname        : String(20);
        firstname       : String(20);
        position        : String(20);
}
