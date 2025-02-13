trigger SaleTrigger on Sale__c (before insert, before update, after insert, after update) {
    SaleTriggerHandler saleTriggerHandler = new SaleTriggerHandler(Trigger.new, Trigger.oldMap);
}