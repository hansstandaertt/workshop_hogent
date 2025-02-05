public with sharing class PaperManager {

    private List<Paper__c> recordList = new List<Paper__c>();
    private Map<Id, Paper__c> oldValueMap = new Map<Id, Paper__c>();

    public PaperManager(List<Paper__c> recordList) {
        this.recordList = recordList;
        setPaperNameField();
    }
    
    public PaperManager(List<Paper__c> recordList, Map<Id, Paper__c> oldValueMap) {
        this(recordList);
        this.oldValueMap = oldValueMap;
    }


    private void setPaperNameField() {
        for (Paper__c paper: recordList) {
            string name = paper.name + ' | ' + paper.size__c + ' | ' + paper.color__c;
            paper.Name = name;
        }
    }
}