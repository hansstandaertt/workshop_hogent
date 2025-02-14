Account a = new Account();
a.Name = 'Securex';
a.Type = 'Customer';
a.Phone = '+3212345678';
a.NumberOfEmployees = 1500;

insert a;

Sale__c sale = new Sale__c();
sale.status__c = 'Closed';
sale.customer__c = a.Id;
sale.total_sale_price__c = 25000;

insert sale;