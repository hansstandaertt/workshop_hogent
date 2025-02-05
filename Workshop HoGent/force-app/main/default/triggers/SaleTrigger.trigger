trigger SaleTrigger on Sale__c (before insert) {
    SaleTriggerHandler saleTriggerHandler = new SaleTriggerHandler(Trigger.new, Trigger.oldMap);
}