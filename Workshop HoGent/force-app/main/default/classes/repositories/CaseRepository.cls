public with sharing class CaseRepository {
    
    public CaseRepository() {
    }

    public Sale__c getSaleByUUID(string uuid) {
        System.debug(uuid);
        Sale__c sale = [SELECT Id FROM Sale__c WHERE Unique_Sale_Number__c = :uuid];
        System.debug(sale);
        return sale;
    }
}