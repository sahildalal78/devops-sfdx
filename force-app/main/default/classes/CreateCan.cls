public with sharing class CreateCan  {

   
    @AuraEnabled
    public static void createRecord (Candidate__c candidate){
        
        try{
            System.debug('CreateCan::createRecord::candidate'+candidate);
            
            if(candidate != null){
                insert candidate;
            }
            
        } catch (Exception ex){
            
        }
        
      
}
}