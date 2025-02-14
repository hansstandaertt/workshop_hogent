public with sharing class PaperTriggerHandler extends AbstractTriggerHandler{
    PaperManager paperManager;
    public PaperTriggerHandler(List<Paper__c> recordList, Map<Id, Paper__c> oldValueMap) {
        super(recordList, oldValueMap);
        paperManager = new PaperManager(recordList);
        execute();
    }

    public override void beforeInsert() {
        System.debug(LoggingLevel.INFO, 'Before Insert');
        paperManager.beforeInsert();
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