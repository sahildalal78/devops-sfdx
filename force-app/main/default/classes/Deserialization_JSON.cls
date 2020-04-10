public class Deserialization_JSON {
    public Integer symbols_requested;
    public Integer symbols_returned;
    
    List<JSONdata> data = new List<JSONdata>();
    class JSONdata {
        public String symbol;    
        public String name;    
        public String currencyJSON;    
        public String price;    
        public String price_open;   
        public String day_high;   
        public String day_low;   
        public String json52_week_high;
        public String json52_week_low;    
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
 public static void fetchJSON(){    
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://api.worldtradingdata.com/api/v1/stock?symbol=^IXIC,^NYA,^DJI,^INX&api_token=pvVCGOkT0xwYHZaRhALA49iuJTIrv2gaZijgQJzXaRvrH0aUGlATshd6qdwM');
     req.setMethod('GET');
       


     Http http = new Http();
     HTTPResponse res = http.send(req);
      parse(res.getBody());          
    }
    public static Deserialization_JSON parse(String json){
        json = json.replaceAll('currency', 'currencyJSON');
        json = json.replace('52_week_high', 'json52_week_high');
        json = json.replace('52_week_low', 'json52_week_low');
        system.debug('value of Objects'+(Deserialization_JSON) System.JSON.deserialize(json, Deserialization_JSON.class));
        return (Deserialization_JSON) System.JSON.deserialize(json, Deserialization_JSON.class);
    }
}