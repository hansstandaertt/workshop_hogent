// Fetch a valid Profile ID (Adjust profile name as needed)
Profile userProfile = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];

List<User> newUsers = new List<User>();
String domain = '@dunder-mifflin.com';
for (Integer i = 1; i <= 4; i++) {
    User newUser = new User(
        Username = 'workshop_hogent' + i + domain,
        FirstName = 'Workshop',
        LastName = 'Hogent' + i,
        Email = 'services@securex.be',
        Alias = 'user_' + i,
        TimeZoneSidKey = 'America/New_York', // Adjust based on region
        LocaleSidKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LanguageLocaleKey = 'en_US',
        ProfileId = userProfile.Id
    );
    newUsers.add(newUser);
}

// Insert users
insert newUsers;

System.debug('Users Created: ' + newUsers);
