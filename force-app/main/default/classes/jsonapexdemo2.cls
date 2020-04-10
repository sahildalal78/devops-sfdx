public class jsonapexdemo2 {
    
 public String key{get;set;}
   public fromParmas[] fromParams{get;set;}
    public class fromParmas {
       public String id{get;set;}  
        public String type{get;set;}   
        public String name{get;set;}
        public String accountype{get;set;}  
        public Double amount{get;set;}  
        public Double inctaxrate{get;set;}  
        public String incomepopupfrequency{get;set;}  
        public String incomepopupgrowthrate{get;set;}  
        public String startdate{get;set;}
        public String enddate{get;set;}   
        public Double APR{get;set;}   
        public Double outstandingamt{get;set;}   
        public Boolean isTaxBenefit{get;set;}   
        public Decimal percentContribution{get;set;}  
        public Double maxLimit{get;set;}   
        public Boolean isMonthly{get;set;}   
        public String currentamount{get;set;}
        public Decimal monthlycontribution{get;set;} 
        public Decimal targetamount{get;set;} 
        public Integer priority{get;set;}  
        public Decimal growth{get;set;}  
        public String targetdate{get;set;}   
        public String savingid{get;set;}   
        public Decimal startvalue{get;set;}
   
    }

public static jsonapexdemo2 parse(String json){
    system.debug('djfhdjfhdjf----'+(jsonapexdemo2) System.JSON.deserialize(json, jsonapexdemo2.class));
		return (jsonapexdemo2) System.JSON.deserialize(json, jsonapexdemo2.class);
}}