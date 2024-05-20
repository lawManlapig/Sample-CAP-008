namespace s4.api;

using API_COMPANYCODE_SRV as ccAPI from '../srv/external/API_COMPANYCODE_SRV';

@cds.autoexpose
@readonly
//Entity projection using the downloaded API
entity srv_CompanyCode as
    projection on ccAPI.A_CompanyCode {
        key CompanyCode,
            CompanyCodeName
    };
