@isTest
public class DailyLeadProcessorTest {

    @isTest Static Void testschedule(){
        Lead l=new Lead(LastName ='Testdata',Company='Apple',Status ='Status ');
        insert l;
        test.startTest();
        system.schedule('testschedule', '0 56 11 * * ?', new DailyLeadProcessor());
       test.stopTest();
    }
    
}