trigger PaperTrigger on Paper__c (before insert, before update, after insert, after update) {
    PaperTriggerHandler paperTriggerHandler = new PaperTriggerHandler(Trigger.new, Trigger.oldMap);
}