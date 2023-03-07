-----------------------------------------------------------------------------------------
-> Sort a list of sObject records based on field value
-----------------------------------------------------------------------------------------

List<Account> accounts = new List<Account>();
accounts.add(new Account(
    Name = 'Hooli',
    NumberOfEmployees = 50,
    AnnualRevenue = 10000
));
accounts.add(new Account(
    Name = 'Pied Piper',
    NumberOfEmployees = 20,
    AnnualRevenue = 5000
));
accounts.add(new Account(
    Name = 'Aviato',
    NumberOfEmployees =10,
    AnnualRevenue = 15000
));
insert accounts;

List<Account> accounts = [SELECT Name, NumberOfEmployees, AnnualRevenue FROM Account];
System.debug('Initial List of Accounts: ' + accounts);

SortUtil.sortRecords(accounts, SortUtil.SortOrder.ASCENDING, 'NumberOfEmployees', SortUtil.Type.TYPE_INTEGER);
System.debug('Accounts sorted by NumberOfEmployees in Ascending Order: ' + accounts);
SortUtil.sortRecords(accounts, SortUtil.SortOrder.ASCENDING, 'Name', SortUtil.Type.TYPE_STRING);
System.debug('Accounts sorted by Name in Ascending Order: ' + accounts);
SortUtil.sortRecords(accounts, SortUtil.SortOrder.ASCENDING, 'AnnualRevenue', SortUtil.Type.TYPE_DECIMAL);
System.debug('Accounts sorted by AnnualRevenue in Ascending Order: ' + accounts);

SortUtil.sortRecords(accounts, SortUtil.SortOrder.DESCENDING, 'NumberOfEmployees', SortUtil.Type.TYPE_INTEGER);
System.debug('Accounts sorted by NumberOfEmployees in Descending Order: ' + accounts);
SortUtil.sortRecords(accounts, SortUtil.SortOrder.DESCENDING, 'Name', SortUtil.Type.TYPE_STRING);
System.debug('Accounts sorted by Name in Descending Order: ' + accounts);
SortUtil.sortRecords(accounts, SortUtil.SortOrder.DESCENDING, 'AnnualRevenue', SortUtil.Type.TYPE_DECIMAL);
System.debug('Accounts sorted by AnnualRevenue in Descending Order: ' + accounts);

SortUtil class: https://github.com/rahulmalhotra/apex-data-structures/blob/custom-comparator/force-app/main/default/classes/SortUtil.cls
