public class MarkCompleteContrl{

    @AuraEnabled
    public static Boolean taskMethod(Id taskid){
        Task thisTask = new Task();
        thisTask = [select id,subject,status from task where id=:taskid];
        thisTask.status = 'Completed';
        update thisTask;
        return true;
    }
}