public class LeadClass {
    @AuraEnabled
    public static List<Lead> getLeads()
    {
        List<Lead> li=[Select Name,Company,Phone,Email From Lead Order By CreatedDate DESC];
        return li;
    }

}