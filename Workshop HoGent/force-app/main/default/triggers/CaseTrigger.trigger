trigger CaseTrigger on Case (before insert) {
    CaseTriggerHandler caseTriggerHandler = new CaseTriggerHandler(Trigger.new, Trigger.oldMap);
}