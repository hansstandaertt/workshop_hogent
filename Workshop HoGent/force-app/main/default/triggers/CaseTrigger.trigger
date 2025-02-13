trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
    CaseTriggerHandler caseTriggerHandler = new CaseTriggerHandler(Trigger.new, Trigger.oldMap);
}