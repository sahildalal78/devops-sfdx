public class GoatComponentController {
     @AuraEnabled
    public static List<goat__c> getGoats(){
        return [SELECT Id,Name FROM goat__c];
    }

}