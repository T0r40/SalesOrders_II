sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"logali/salesorders/salesorders/test/integration/pages/SalesOrdersList.gen",
	"logali/salesorders/salesorders/test/integration/pages/SalesOrdersObjectPage.gen"
], function (JourneyRunner, SalesOrdersListGenerated, SalesOrdersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('logali/salesorders/salesorders') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrdersListGenerated: SalesOrdersListGenerated,
			onTheSalesOrdersObjectPageGenerated: SalesOrdersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

