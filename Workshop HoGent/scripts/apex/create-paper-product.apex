Paper__c p = new Paper__c();
p.Name = 'Regular Paper';
p.Color__c = 'White';
p.CurrencyIsoCode = 'EUR';
p.Price__c = 1.5;
p.sheets_per_pack__c = 100;
p.Size__c = 'A4';
p.Stock__c = 200;

insert p;