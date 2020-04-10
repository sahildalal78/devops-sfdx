public class EditForm {
    @AuraEnabled
    public static List<Lead> search(String recordId)
    {

      return [select Name,Email,Company,Phone from Lead Where Id=:recordId];  
    }

}