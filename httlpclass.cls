public class httpCallOutCtrl {
	@AuraEnabled
	public static Map < String,
	Object > getCalloutResponseContents(String url) {
		Http h = new Http();
		HttpRequest req = new HttpRequest();
		req.setEndpoint(url);
		req.setMethod('GET');
		HttpResponse res = h.send(req);
		System.debug('response:--> ' + res.getBody());
		Map < String,
		Object > resultsMap = (Map < String, Object > ) JSON.deserializeUntyped(res.getBody());
		system.debug('resultsMap-->' + resultsMap);
 
		return resultsMap;
	}
    public static void httptest(){
        httprequest hq = new httprequest();
        hq.setEndpoint('http://www.google.com');
     hq.setMethod('GET');
    }
}

//change
//test 
//branch 
// cool
//wibciwbc

//hello 
