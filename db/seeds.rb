cb = User.create(username: 'chrisb', email: 'peacethrubeats@gmail.com', first_name: 'Chris', last_name: 'Bastian', password_hash: '$2a$10$rknyv5nrBxyB2DbZZUNCM.Y70VXERu7X6lxwOueyG3.g3di.RBZEK', address:'277 Duncan St.',city:'San Francisco', state:'CA', zip: '94131')
cx = User.create(username: 'charlesXavier', email: 'cxavier@example.com', first_name: 'Charles', last_name: 'Xavier', password_hash: '$2a$10$rknyv5nrBxyB2DbZZUNCM.Y70VXERu7X6lxwOueyG3.g3di.RBZEK', address:'170 Perkins St', city:'Oakland', state:'CA', zip: '94610')
dc = User.create(username: 'daleCooper', email: 'dcooper@example.com', first_name: 'Dale', last_name: 'Cooper', password_hash: '$2a$10$rknyv5nrBxyB2DbZZUNCM.Y70VXERu7X6lxwOueyG3.g3di.RBZEK', address:'356 Jayne Ave', city:'Oakland', state:'CA', zip: '94610')
ms = User.create(username: 'markSmith', email: 'msmith@example.com', first_name: 'Mark', last_name: 'Smith', password_hash: '$2a$10$rknyv5nrBxyB2DbZZUNCM.Y70VXERu7X6lxwOueyG3.g3di.RBZEK', address:'201 Banks St', city:'San Francisco', state:'CA', zip: '94110')

Relationship.create(user_id: 1, follower_id: 2)
Relationship.create(user_id: 1, follower_id: 3)
Relationship.create(user_id: 2, follower_id: 3)
Relationship.create(user_id: 2, follower_id: 4)

e1 = Event.create(title: 'Move a paino', description: 'My grandmother gave me a piano and I need help moving it up three steps into my house', date_of_event: '11/2/14',time_of_event: '9am', address: ('277 Duncan St.'), city: ('San Francisco'), state: ('CA'), length_of_event: '1/2 hour', user_id: 1)
Event.create(title: 'Rebuild my shed', description: 'My shed was a victim of the recent tornado. Much of it still remains, but I need help to rebuild it. I don\'t know a whole lot about construction so if you do that would be a big plus!', date_of_event: '12/1/14', time_of_event: '10am', address: ('277 Duncan St.'), city: ('San Francisco'), state: ('CA'), length_of_event: '2 days', participants: 5, user_id: 1)
Event.create(title: 'Clean our city stream!', description: 'I would like to pick up trash around the stream that runs through the middle of our city. Lets all kick in some cash and we can eat pizza after!', date_of_event: '12/15/14', time_of_event: '12:00pm', address: ('451 Berry St'), city: ('San Francisco'), state: ('CA'), length_of_event: '3 hours', participants: "10", user_id: 2)
Event.create(title: 'Rebuild a ramp at the skate park', description: 'Dude!  I skate all day and the quarter pipe is coming apart.  Help me OBI WAN', date_of_event:'11/17/14', time_of_event:'2pm', address: ('Petrero del Sol'), city: ('San Francisco'), state: ('CA'),length_of_event: '2 hours', participants: '2', user_id: 3)
Event.create(title: 'Help feed the homeless this Sunday morning.', description: 'We always need help doing this! Plus you get a chance to meet some interesting people.', date_of_event:'11/17/14',time_of_event: '8:30am', address: ('James Rolph Jr Playground'), city: ('San Francisco'), state: ('CA'), length_of_event: '2 1/2 hours', participants: 5, user_id: 3)

Event.create(title: 'Build an Art Car!', description: 'I am going to Burning Man this year!  I need people to help put this finishing touches on my sweet car', date_of_event:'12/5/14' ,time_of_event: '11am', address: ('654 Vernon St.'), city: ('Oakland'), state: ('CA'), length_of_event:'2 days', participants: 3, user_id: 3)

Event.create(title: 'Upgrade my old PC', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', date_of_event:'12/22/14', time_of_event: '11am', address: ('37 Croxton Ave'), city: ('Oakland'), state: ('CA'), length_of_event:'3 hours', participants: 1, user_id: 3)

Event.create(title: 'Drive me to the grocery store.  I cannot drive anymore :(', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', date_of_event:'1/5/15', time_of_event: '11am', address: ('201 Banks St'), city: ('San Francisco'), state: ('CA'), length_of_event:'2 hours', participants: 3, user_id: 4)

Event.create(title: 'Cut down a small tree', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', date_of_event:'1/15/15', time_of_event: '11am', address: ('201 Banks St'), city: ('San Francisco'), state: ('CA'), length_of_event:'2 days', participants: 3, user_id: 4)

Event.create(title: 'Rebuild a park bench', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', date_of_event:'11/26/14', time_of_event: '12am', address: ('185 Prentiss St'), city: ('San Francisco'), state: ('CA'), length_of_event:'3 hours', participants: 2, user_id: 4)


Event.create(title: 'Paint a mural', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', date_of_event:'1/15/15', time_of_event: '11am', address: ('201 Banks St'), city: ('San Francisco'), state: ('CA'), length_of_event:'2 days', participants: 3, user_id: 4)

Event.create(title: 'Clean out my garage', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', date_of_event:'12/17/14', time_of_event: '11am', address: ('201 Banks St'), city: ('San Francisco'), state: ('CA'), length_of_event:'2 days', participants: 3, user_id: 4)