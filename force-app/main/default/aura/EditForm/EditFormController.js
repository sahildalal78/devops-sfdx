({
    handleComponentEvent : function(component, event, helper) {
        component.set("v.saved",true);
        console.log("handled");
    },
    handleSubmit : function(component, event, helper) {
        
        
    },
    Arrow : function(component, event, helper) {
        component.set("v.saved",false); 
    },
    handleSuccess : function(component, event, helper) {  
        var comp = component.find('editformid');
        //  $A.util.addClass(comp, 'slds-hide');  
        component.set("v.saved",false);
        component.set("v.msg",true);
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Success!",
            "message": "Lead added sucessfully!"
        });
        toastEvent.fire();
        
        var appEvent = $A.get("e.c:AppEvent");      
        appEvent.setParams({
            message:true  
        });
        appEvent.fire();
        var payload = event.getParams().response;
        var action=component.get("c.search");
        action.setParams({ "recordId" : payload.id});
        action.setCallback(this,function(response){
            
            var data=response.getReturnValue();
           
            component.set("v.data",data);
            
            component.set('v.columns', [
                {label: 'Lead Name', fieldName: 'Name', type: 'text'},
                {label: 'Email', fieldName: 'Email', type: 'Email'},
                {label: 'Phone', fieldName:  'Phone', type: 'Phone' },
                {label: 'Company', fieldName:  'Company', type: 'Text'}        
            ]);
            
        });
        $A.enqueueAction(action);	        
    }
})