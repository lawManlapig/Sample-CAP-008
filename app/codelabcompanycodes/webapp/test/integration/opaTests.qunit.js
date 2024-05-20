sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cl/companycodes/codelabcompanycodes/test/integration/FirstJourney',
		'cl/companycodes/codelabcompanycodes/test/integration/pages/CompanyCodesList',
		'cl/companycodes/codelabcompanycodes/test/integration/pages/CompanyCodesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanyCodesList, CompanyCodesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cl/companycodes/codelabcompanycodes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompanyCodesList: CompanyCodesList,
					onTheCompanyCodesObjectPage: CompanyCodesObjectPage
                }
            },
            opaJourney.run
        );
    }
);