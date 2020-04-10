public with sharing class StockMarketApex {

  
      @AuraEnabled
	public static Map < String,
	Object > getCalloutResponseContents(String url) {
 
		Http h = new Http();

		HttpRequest req = new HttpRequest();
		req.setEndpoint('https://mytafi.herokuapp.com/rest/service/getFutureSimulationsNew');
		req.setMethod('GET');

		HttpResponse res = h.send(req);
		System.debug('response:--> ' + res.getBody());
 		Map < String,Object > resultsMap = (Map < String, Object > ) JSON.deserializeUntyped(res.getBody());
		system.debug('resultsMap-->' + resultsMap);
        

 
        return resultsMap;
	}


    }