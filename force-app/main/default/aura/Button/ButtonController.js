({
	 openform : function(component, event, helper) {
        
        
   var appEvent = $A.get("e.c:CmpEvent");

         console.log("fired");
         
         appEvent.fire();
     }

})