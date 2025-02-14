public with sharing class CaseTriggerHandler extends AbstractTriggerHandler{
    
    CaseManager caseManager;
    public CaseTriggerHandler(List<Case> recordList, Map<Id, Case> oldValueMap) {
        super(recordList, oldValueMap);
        caseManager = new CaseManager(recordList, oldValueMap);
        execute();
    }

    public override void beforeInsert() {
        System.debug(LoggingLevel.INFO, 'Before Insert');
        caseManager.beforeInsert();
    }
    public override void beforeUpdate() {
        System.debug(LoggingLevel.INFO, 'Before Update');
        caseManager.beforeUpdate();
    }
    public override void afterInsert() {
        System.debug(LoggingLevel.INFO, 'After Insert');
    }
    public override void afterUpdate() {
        System.debug(LoggingLevel.INFO, 'After Update');
    }
}