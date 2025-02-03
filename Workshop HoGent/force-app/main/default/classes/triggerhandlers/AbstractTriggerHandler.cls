public with sharing abstract class AbstractTriggerHandler {
    
    public List<SObject> recordList = new List<SObject>();
    public Map<Id, SObject> oldValueMap = new Map<Id, SObject>();

    public AbstractTriggerHandler(List<SObject> recordList, Map<Id, SObject> oldValueMap) {
        this.recordList = recordList;
        this.oldValueMap = oldValueMap;
    }

    public void execute() {

        switch on Trigger.OperationType {
            when BEFORE_INSERT {
                beforeInsert();
            }
            when BEFORE_UPDATE {
                beforeUpdate();
            }
            when AFTER_INSERT {
                afterInsert();
            }
            when AFTER_UPDATE {
                afterUpdate();
            }
        }
    }

    public abstract void beforeInsert();
    public abstract void beforeUpdate();
    public abstract void afterInsert();
    public abstract void afterUpdate();
}