public with sharing class CaseRepository {

    public Sale__c getSaleByUUID(string uuid) {
        system.debug(uuid);
        Sale__c sale = [SELECT Id FROM Sale__c WHERE Unique_Sale_Number__c = :uuid];
        system.debug(sale);
        return sale;
    }
}