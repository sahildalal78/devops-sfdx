({
    cinit : function(component, event, helper) {
        
        var today = new Date();
        // component.set('v.today',today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate());
        var action=component.get("c.show_recordtypes");
        action.setCallback(this,function(response){
            var data=response.getReturnValue();
            var Li=[];
            data.forEach(function(element){
                Li.push(element);    
            });
            component.set("v.colors",Li);  
        });
        $A.enqueueAction(action);
        
        
        var action=component.get("c.show_recordtypes1");
        action.setCallback(this,function(response){
            var data=response.getReturnValue();
            var Li=[];
            data.forEach(function(element){
                Li.push(element);    
            });
            component.set("v.red",Li);  
        });
        $A.enqueueAction(action);	  
        
        var action=component.get("c.show_recordtypes2");
        action.setCallback(this,function(response){
            var data=response.getReturnValue();
            var Li=[];
            data.forEach(function(element){
                Li.push(element);    
            });
            component.set("v.yellow",Li);  
        });
        $A.enqueueAction(action);	  
        
    },
    
    showToast: function(component, event, helper) {
       
    },
    setOutput : function(component, event, helper) {
        var expdate = component.find("expdate").get("v.value");
        
        var oDate = component.find("oDate");
        oDate.set("v.value", expdate);
        
    },
    changeSelect : function(component, event, helper){
        var acc=component.get("v.val11");     
        var acc1=component.get("v.val12");
        var acc2=component.get("v.val13");
        var accName=component.get("v.accName");
        var oppoName=component.get("v.oppoName");
        var conName=component.get("v.conName");    
        var StageValue=component.get("v.StageValue");
        var DateOfOppo=component.find("oDate").get("v.value");
        var action=component.get("c.InsertThe");
        var LeadId=component.get("v.recordId");
            var d = Date.parse(DateOfOppo);       
        if(accName==null||oppoName==null||conName==null||acc=="choose one..."||acc1=="choose one..."||acc2=="choose one..."||StageValue=="choose one..."||DateOfOppo=='')
        {
   
             var toastEvent = $A.get("e.force:showToast");
    toastEvent.setParams({
        "title": "Success!",
        "message": "The record has been updated successfully."
    });
    toastEvent.fire();
        }
        else
        {
            action.setParams({"accc" : acc,
                              "acc11" : acc1,
                              "acc22" : acc2,
                              "accNamee" : accName,
                              "oppoNamee" : oppoName,
                              "conNamee" : conName,
                              "StageValuee" : StageValue,
                              "DateOfOppo" : DateOfOppo,
                              "LeadId" : LeadId});
            action.setCallback(this,function(response){      
                var state = response.getState();
                var res=response.getReturnValue();
                if(state == 'SUCCESS') {
                    console.log('success');
                }
                else
                {
                    console.log('callback failed');
                }
                var navEvt = $A.get("e.force:navigateToSObject");
                navEvt.setParams({
                    "recordId": res
                });
                navEvt.fire();
            });
            
            $A.enqueueAction(action);              
        }
    }
})