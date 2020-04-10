public class InsertTheData {
    @AuraEnabled
    public static List<RecordType> show_recordtypes()
    {
        return [Select Id,Name from RecordType where SObjectType='Account'];
    }
    @AuraEnabled
    public static List<RecordType> show_recordtypes1()
    {
        return [Select Id,Name from RecordType where SObjectType='Opportunity'];
    }
    @AuraEnabled
    public static List<RecordType> show_recordtypes2()
    {
        return [Select Id,Name from RecordType where SObjectType='Contact'];
    }
    @AuraEnabled
    public static Id InsertThe(Id LeadId,String accc,String acc11,String acc22,String accNamee,String oppoNamee,String conNamee,String StageValuee,String DateOfOppo) 
    {
        //  for(integer i=0;i<DateToOppo.length();i++)
        String[] arr = DateOfOppo.split('-');
        String datetosend=arr[1]+'/'+arr[2]+'/'+arr[0];
        //Parsed into Date
        Date aa= date.today();
        
        Account a=new Account(Name=accNamee,RecordTypeId=accc);
        Insert a;
        ID result=A.iD;
        
        
        Contact c=new Contact(LastName=conNamee,RecordTypeId=acc22,accountId=result);
        Insert c;
        Opportunity b=new Opportunity(Name=oppoNamee,StageName=StageValuee,RecordTypeId=acc11,CloseDate=aa,accountId=result);
        Insert b;
        
        
        Lead l=[Select Id,status from Lead where Id=:LeadId];
        l.status='Closed - Converted';
        update l;
        
        
        
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(LeadId);
        lc.setAccountId(result);
        lc.setContactId(c.Id);
        lc.setOpportunityId(b.Id);
        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        Database.convertLead(lc,true);  
   
        return result;
    }
}