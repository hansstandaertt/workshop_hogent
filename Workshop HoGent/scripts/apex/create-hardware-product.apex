Hardware__c h = new Hardware__c();
h.Brand__c = 'Canon'; // HP, Canon, Epson, Brother
h.CurrencyIsoCode = 'EUR';
h.Model__c = '5000';
h.Name = 'Paper Destroyer 5000';
h.Price__c = 120;
h.Stock__c = 30;
h.Type__c = 'Paper Cutter'; // Printer, Laminator, Paper Cutter

insert h;