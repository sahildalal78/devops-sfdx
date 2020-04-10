public with sharing class LightleadCreate {
 @AuraEnabled
    public static void createRecord (Candidate__c candidate){
        
        try{
            System.debug('LightleadCreate:createRecord::candidate'+candidate);
            
            if(candidate != null){
                insert candidate;
            }
            
        } catch (Exception ex){
            
        }
        
    }   
}