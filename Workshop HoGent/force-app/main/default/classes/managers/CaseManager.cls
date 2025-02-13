public with sharing class CaseManager {
    private List<Case> recordList = new List<Case>();
    private Map<Id, Case> oldValueMap = new Map<Id, Case>();
    private CaseRepository caseRepository;

    public CaseManager(List<Case> recordList, Map<Id, Case> oldValueMap) {
        this.recordList = recordList;
        this.oldValueMap = oldValueMap;
        this.CaseRepository = new CaseRepository();
    }

    public void beforeInsert() {
        addSaleToCase();
    }

    public void beforeUpdate() {
        // Your method here
    }
    
    private void addSaleToCase() {
        for (Case c: recordList) {
            String textToSearch = c.Subject + c.Description;
            String uuid = getUUIDFromEmail(textToSearch);
            if (!String.isBlank(uuid)) {
                c.Sale__c = caseRepository.getSaleByUUID(uuid).Id;
            }
        }
    }

    private String getUUIDFromEmail(String textToSearch) {
        String stringToReturn = '';
        String uuidPattern = '[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}';
        Pattern regexPattern = Pattern.compile(uuidPattern);
        Matcher matcher = regexPattern.matcher(textToSearch);
        if (matcher.find()) {
            stringToReturn = matcher.group(0);
        }

        return stringToReturn;
    }

    private void closeCaseOnCaseResolution() {
        // Your code here
    }

    

    

}