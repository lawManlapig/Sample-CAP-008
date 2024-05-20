sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'cl.companycodes.codelabcompanycodes',
            componentId: 'CompanyCodesList',
            contextPath: '/CompanyCodes'
        },
        CustomPageDefinitions
    );
});