public with sharing class StockTrading{
  
     public Integer symbols_requested;    
    public Integer symbols_returned;    
   //public clsdata[] data;
    List<clsdata> data=new List<clsdata>();
   public class clsdata {
        public String symbol;    
        public String name;    
        public String mycurrency;    
        public String price;    
        public String price_open;   
        public String day_high;   
        public String day_low;   
        public Integer u52_week_high;
        public Integer u52_week_low;    
        public String day_change;    
        public String change_pct;    
        public String close_yesterday;    
        public String market_cap;    
        public String volume;    
        public String volume_avg;    
        public String shares;    
        public String stock_exchange_long;    
        public String stock_exchange_short;    
        public String timezone;    
        public String timezone_name;    
        public String gmt_offset;    
        public String last_trade_time;    
    }
    
    public Static void getdata(){
   
HttpRequest httpRequest = new HttpRequest();  
httpRequest.setMethod('GET');   
//httpRequest.setHeader('Authorization', 'OAuth ' + UserInfo.getSessionId());        
//httpRequest.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID()); 
httpRequest.setEndpoint('https://api.worldtradingdata.com/api/v1/stock?symbol=^IXIC,^NYA,^DJI,^INX&api_token=W3WHMBuNhqeVx5ZIMC5d5xr5nGDDxON2ubfjv5LwzLACjt92xz2m99pRVXGN');  
String response = '';
//try {  
		 Http http = new Http();   
		 HttpResponse httpResponse = http.send(httpRequest);  
		// if (httpResponse.getStatusCode() == 200 ) {  
		//	   response = JSON.serializePretty( JSON.deserializeUntyped(httpResponse.getBody()) );  
		// } else {  
		//	   System.debug(' httpResponse ' + httpResponse.getBody() );  
		//	   throw new CalloutException( httpResponse.getBody() );  
	//	 }   
//} catch( System.Exception e) {  
		// System.debug('ERROR: '+ e);  
		// throw e;  
//}  
System.debug(' ** response ** : ' + response );   
    }
    
 public static StockTrading parse(String json){
        system.debug(' Object in list'+(StockTrading) System.JSON.deserialize(json, StockTrading.class));
        return (StockTrading) System.JSON.deserialize(json, StockTrading.class);
    }
}