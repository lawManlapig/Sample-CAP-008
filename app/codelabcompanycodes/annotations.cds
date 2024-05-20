using CompanyCodes_service as service from '../../srv/companycodessrv';

annotate service.CompanyCodes with @(
    UI.SelectionFields: [
        companycode,
        country,
    ],
    UI.FieldGroup #GeneralGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: companycode,
            },
            {
                $Type: 'UI.DataField',
                Value: companycodename,
            },
            {
                $Type: 'UI.DataField',
                Value: city,
            },
            {
                $Type: 'UI.DataField',
                Value: country,
            },
            {
                $Type: 'UI.DataField',
                Value: currency,
            },
            {
                $Type: 'UI.DataField',
                Label: 'language_code',
                Value: language_code,
            },
            {
                $Type: 'UI.DataField',
                Value: addressnumber,
            },
        ],
    },
    UI.Facets                  : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneralInfoFacet',
            Label : 'Company Code Details',
            Target: '@UI.FieldGroup#GeneralGroup',
        },
    ],
    UI.LineItem                : [
        {
            $Type: 'UI.DataField',
            Value: companycode,
        },
        {
            $Type: 'UI.DataField',
            Value: companycodename,
        },
        {
            $Type: 'UI.DataField',
            Value: city,
        },
        {
            $Type: 'UI.DataField',
            Value: country,
        },
        {
            $Type: 'UI.DataField',
            Value: currency,
        },
    ],
);
