public class showEmailStatusMessage {  

    public showEmailStatusMessage(){

        String evntMessage = ApexPages.currentPage().getParameters().get('evt');

        if(evntMessage == 'Success')

            Apexpages.addMessage(new Apexpages.Message(ApexPages.severity.Confirm,'Email Successfully Sent'));

        else

            Apexpages.addMessage(new Apexpages.Message(ApexPages.severity.Error,evntMessage));

    }

}