public class StockMarket{
    public Integer symbols_requested;    
    public Integer symbols_returned;    
    List<clsdata> data=new List<clsdata>();
    public class clsdata {
        public String symbol;    
        public String name;    
        public String mycurrency;    
        public String price;    
        public String price_open;   
        public String day_high;   
        public String day_low;   
        public String a52_week_high;
        public String a52_week_low;    
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
    public static void APiCallMethod(){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://api.worldtradingdata.com/api/v1/stock?symbol=^INX,^DJI,^IXIC,^NYA&api_token=W3WHMBuNhqeVx5ZIMC5d5xr5nGDDxON2ubfjv5LwzLACjt92xz2m99pRVXGN');
     req.setMethod('GET');
       
   
     Http http = new Http();
     HTTPResponse res = http.send(req);
     parse(res.getBody());
         
    }
    public static StockMarket parse(String json){
        json = json.replaceAll('currency', 'mycurrency');
        json = json.replaceAll('52_week_high','a52_week_high');
        json =json.replaceAll('52_week_low', 'a52_week_low');
           
        system.debug('value of Object in list'+(StockMarket) System.JSON.deserialize(json, StockMarket.class));
        return (StockMarket) System.JSON.deserialize(json, StockMarket.class);
    }
}