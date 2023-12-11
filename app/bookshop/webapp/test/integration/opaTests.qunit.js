sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/ibm/bookshop/test/integration/FirstJourney',
		'com/ibm/bookshop/test/integration/pages/BooksList',
		'com/ibm/bookshop/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/ibm/bookshop') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);