public with sharing class CaseTriggerHandler extends AbstractTriggerHandler{
    public CaseTriggerHandler(List<Case> recordList, Map<Id, Case> oldValueMap) {
        super(recordList, oldValueMap);
        execute();
    }

    public override void beforeInsert() {
        System.debug(LoggingLevel.INFO, 'Before Insert');
        CaseManager caseManager = new CaseManager(recordList);
    }
    public override void beforeUpdate() {
        System.debug(LoggingLevel.INFO, 'Before Update');
    }
    public override void afterInsert() {
        System.debug(LoggingLevel.INFO, 'After Insert');
    }
    public override void afterUpdate() {
        System.debug(LoggingLevel.INFO, 'After Update');
    }
}