({
	onCheck: function(component, event, helper) {
       
        var action = component.get("c.taskMethod");
        action.setParams({
            taskid: component.get("v.recordId"),
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS' && component.isValid()){
                $A.get('e.force:refreshView').fire();
                $A.get("e.force:closeQuickAction").fire() 
                //window.close();
            }else{
                alert('ERROR');
            }
        });
        //alert("Your Task is updated please refersh.");
        $A.enqueueAction(action);
    }
})