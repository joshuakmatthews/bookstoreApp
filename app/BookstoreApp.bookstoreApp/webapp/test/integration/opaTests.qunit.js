sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'BookstoreApp/bookstoreApp/test/integration/FirstJourney',
		'BookstoreApp/bookstoreApp/test/integration/pages/bookList',
		'BookstoreApp/bookstoreApp/test/integration/pages/bookObjectPage'
    ],
    function(JourneyRunner, opaJourney, bookList, bookObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('BookstoreApp/bookstoreApp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebookList: bookList,
					onThebookObjectPage: bookObjectPage
                }
            },
            opaJourney.run
        );
    }
);