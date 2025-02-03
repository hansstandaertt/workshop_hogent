List<String> dunderMifflinUsers = new List<String>{
    'Michael Scott',
    'Dwight Schrute',
    'Jim Halpert',
    'Pam Beesly',
    'Ryan Howard',
    'Andy Bernard',
    'Robert California',
    'Stanley Hudson',
    'Kevin Malone',
    'Meredith Palmer',
    'Angela Martin',
    'Oscar Martinez',
    'Phyllis Vance',
    'Roy Anderson',
    'Jan Levinson',
    'Toby Flenderson',
    'Kelly Kapoor',
    'Creed Bratton',
    'Darryl Philbin',
    'Erin Hannon',
    'Gabe Lewis',
    'Holly Flax',
    'Nellie Bertram',
    'Clark Green',
    'Pete Miller'
};

// Fetch a valid Profile ID (Adjust profile name as needed)
Profile userProfile = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];
Profile identityProfile = [SELECT Id FROM Profile WHERE Name = 'Identity User' LIMIT 1];

List<User> newUsers = new List<User>();
String domain = '@dunder-mifflin.com';

// Create the basic users with license
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
   // newUsers.add(newUser);
}

for (String dunderMifflinUser : dunderMifflinUsers){
    String userName = dunderMifflinUser.trim().replace(' ','.').toLowerCase();
    String firstName= dunderMifflinUser.substringBefore(' ');
    String lastName = dunderMifflinUser.substringAfter(' ');
    User tmpUser = new User(
    Username = userName + domain + '.invalid.identity',
    FirstName = firstName,
    LastName = lastName,
    ProfileId = identityProfile.Id,
    Alias = (firstName.substring(0,1) + lastName.substring(0,math.min(5, lastName.length()))).toLowerCase(),
    TimeZoneSidKey = 'America/New_York', // Adjust based on region
    LocaleSidKey = 'en_US',
    EmailEncodingKey = 'UTF-8',
    LanguageLocaleKey = 'en_US',
    Email = userName + domain + '.invalid');
    newUsers.add(tmpUser);

}

// Insert users
insert newUsers;

System.debug('Users Created: ' + newUsers);
