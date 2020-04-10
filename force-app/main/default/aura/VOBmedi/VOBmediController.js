({
    doInit: function(component, event, helper) {
      

    },
    
  
    cancel: function(component, event, helper) {
        component.set("v.isOpen", false);
    },
    
    handleSaveAndNew: function(component, event, helper) {
        component.set("v.isOpen", false);
    },
    handleSave: function(component, event, helper) {
        component.set("v.isOpen", false);
    },
    handleKeyUp: function (cmp, evt) {
        var isEnterKey = evt.keyCode === 13;
        if (isEnterKey) {
            var queryTerm = cmp.find('enter-search').get('v.value');
            alert('Searched for "' + queryTerm + '"!');
        }
    },
    handleKeyUp2: function (cmp, evt) {
        var isEnterKey = evt.keyCode === 13;
        if (isEnterKey) {
            var queryTerm = cmp.find('enter-search').get('v.value');
            alert('Searched for "' + queryTerm + '"!');
        }
    },
   
    
    handleReviewOrder: function(component, event, helper) {
            }


});