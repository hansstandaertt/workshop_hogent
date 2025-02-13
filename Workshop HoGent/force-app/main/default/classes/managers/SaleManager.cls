public with sharing class SaleManager {
    private List<Sale__c> recordList = new List<Sale__c>();
    private Map<Id, Sale__c> oldValueMap = new Map<Id, Sale__c>();

    public SaleManager(List<Sale__c> recordList, Map<Id, Sale__c> oldValueMap) {
        this.recordList = recordList;
        this.oldValueMap = oldValueMap;
    }

    public void beforeInsert() {
        setUniqueSaleNumber();
    }

    public void afterUpdate() {
        // Your method here
    }

    // Methods
    private void setUniqueSaleNumber() {
        for (Sale__c sale : recordList) {
            sale.Unique_Sale_Number__c = generateUUID();
        }
    }

    private string generateUUID() {
        UUID randomUuid = UUID.randomUUID();
        return randomUuid.toString();
    }

    private void createCaseAfterSaleClosure() {
        for (Sale__c sale: recordList) {
            if (sale.status__c == 'Closed' && oldValueMap.get(sale.Id).status__c != 'Closed') {
                // Your case creation logic here
            }
        }
    }
}