public with sharing class PaperTriggerHandler extends AbstractTriggerHandler{
    public PaperTriggerHandler(List<Paper__c> recordList, Map<Id, Paper__c> oldValueMap) {
        super(recordList, oldValueMap);
        execute();
    }

    public override void beforeInsert() {
        System.debug(LoggingLevel.INFO, 'Before Insert');
        PaperManager paperManager = new PaperManager(recordList);
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