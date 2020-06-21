Specifications for the Sinatra Assessment
Specs:

 Use Sinatra to build the app
 ## I used sinatra to build the app
 Use ActiveRecord for storing information in a database
 ## I used ActiveRecord to migrate my sqlite3 databases
 Include more than one model class (e.g. User, Post, Category)
 ## I used four models: ringer, ringer_team, team and user
 Include at least one has_many relationship on your User model (e.g. User has_many Posts)
 ## team has_many ringer_teams && team has_many ringers, through ringer_teams && ringer has_many ringer_teams && ringer has_many teams, through ringer_teams
 Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
 ## team belongs_to user && ringer_team belongs_to ringer && ringer_team belongs_to team 
 Include user accounts with unique login attribute (username or email)
 ## users can sign up with their email and create a unique password 
 Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
 ## hiring and firing of ringers meet this spec
 Ensure that users can't modify content created by other users
 ## users cannot alter information created by other users 
 Include user input validations
 ## validations are included in the sessions controller
 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

 You have a large number of small Git commits
 ## done
 Your commit messages are meaningful
 ## done
 You made the changes in a commit that relate to the commit message
 ## done
 You don't include changes in a commit that aren't related to the commit message
 ## done