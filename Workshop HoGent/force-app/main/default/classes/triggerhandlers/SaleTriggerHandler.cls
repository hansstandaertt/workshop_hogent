public with sharing class SaleTriggerHandler extends AbstractTriggerHandler{
    public SaleTriggerHandler(List<Sale__c> recordList, Map<Id, Sale__c> oldValueMap) {
        super(recordList, oldValueMap);
        execute();
    }

    public override void beforeInsert() {
        System.debug(LoggingLevel.INFO, 'Before Insert');
        SaleManager saleManager = new SaleManager(recordList);
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