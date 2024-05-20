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
    key id              : UUID       @(UI.Hidden);
        companycode     : String(4)  @(
            title: '{i18n>Cocd}',
            mandatory,
            assert.unique
        );
        companycodename : String(50) @(title: '{i18n>Conm}');
        city            : String(20) @(title: '{i18n>City}');
        country         : String(20) @(title: '{i18n>Ctry}');
        currency        : String(3)  @(title: '{i18n>Curr}');
        language        : Language;
        addressnumber   : String(10) @(title: '{i18n>Adrn}');
}

entity Addresses {
    key id              : UUID                        @(UI.Hidden);
        addressnumber   : Association to CompanyCodes @(
                              title: '{i18n>Adrn}',
                              mandatory,
                              assert.unique
                          );
        personnelnumber : String(10)                  @(title: '{i18n>Psnm}');
        emailaddress    : String(50)                  @(title: '{i18n>Eadd}');
}

entity PersonnelNumbers {
    key id              : UUID                     @(UI.Hidden);
        personnelnumber : Association to Addresses @(
                              title: '{i18n>Psnm}',
                              mandatory,
                              assert.unique
                          );
        lastname        : String(20)               @(title: '{i18n>Lnam}');
        firstname       : String(20)               @(title: '{i18n>Fnam}');
        position        : String(20)               @(title: '{i18n>Posi}');
}