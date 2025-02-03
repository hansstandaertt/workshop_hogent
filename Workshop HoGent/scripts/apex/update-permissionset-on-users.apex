List<User> users = [Select Id from User where username like '%dunder-mifflin%.identity'];

// Retrieve the Permission Set ID
PermissionSet paperUserPermSet = [SELECT Id FROM PermissionSet WHERE Name = 'Paper_User' LIMIT 1];

// List to hold Permission Set Assignments
List<PermissionSetAssignment> psaList = new List<PermissionSetAssignment>();

for (User u : users) {
    PermissionSetAssignment psa = new PermissionSetAssignment(
        AssigneeId = u.Id,
        PermissionSetId = paperUserPermSet.Id
    );
    psaList.add(psa);
}

// Insert all assignments
try {
    insert psaList;
    System.debug('Permission Set assigned to users successfully.');
} catch (Exception e) {
    System.debug('Error assigning Permission Set: ' + e.getMessage());
}
