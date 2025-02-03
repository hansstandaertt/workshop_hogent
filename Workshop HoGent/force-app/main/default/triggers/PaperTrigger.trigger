trigger PaperTrigger on Paper__c (before insert) {
    PaperTriggerHandler paperTriggerHandler = new PaperTriggerHandler(Trigger.new, Trigger.oldMap);
}