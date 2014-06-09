# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1= User.create(first_name: 'Carolyn', last_name: 'Ganon', email: 'cganon@gmail.com', password: 'abcd1234', password_confirmation: 'abcd1234')

user2=User.create(first_name: 'Caroline', last_name: 'Constable', email: 'cconstable89@gmail.com', password: 'abcd1234', password_confirmation: 'abcd1234')

user3=User.create(first_name: 'RB', last_name: 'Ganon', email: 'rbganon@gmail.com', password: 'abcd1234', password_confirmation: 'abcd1234')

user4=User.create(first_name: 'Michelle', last_name: 'Ganon', email: 'mganon@gmail.com', password: 'abcd1234', password_confirmation: 'abcd1234')

library1 = Library.create(title: 'Cool NYTimes', description: 'My favorite NYTimes articles')
library2 = Library.create(title: 'Rails Guides', description: 'Links to helpful guides and tips')
library4= Library.create(title: 'Cooking', description: 'Best recipes')
library5= Library.create(title: 'International Politics', description: 'Articles for my final paper')

user1.libraries << library1
user1.libraries << library2
user2.libraries << library1
user2.libraries << library2
user3.libraries << library1
user3.libraries << library2
user3.libraries << library4
user3.libraries << library5

user4.libraries << library1
user4.libraries << library2
user4.libraries << library4
user4.libraries << library5


Link.create(title: 'G.M. Says Inquiry Found "Pattern of Incompetence"', url:'http://www.nytimes.com/2014/06/06/business/gm-ignition-switch-internal-recall-investigation-report.html?hp&_r=0', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Link.create(title: 'Senate Confirms Burwell to Lead Health and Human Services', url:'http://www.nytimes.com/2014/06/06/us/politics/sylvia-mathews-burwell-confirmed-as-health-secretary.html?hp', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Link.create(title: 'BNP Exec Asked to Leave', url:'http://dealbook.nytimes.com/2014/06/05/bnp-executive-asked-to-leave-amid-investigation/?ref=business', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Link.create(title: 'Ruby Guides - Migrations', url:'http://guides.rubyonrails.org/migrations.html', library_id: 2, picture: 'http://www2.psd100.com/ppp/2013/10/0501/ruby-icon-1005094329.png')

Link.create(title: 'Ruby Guides - Validations', url:'http://guides.rubyonrails.org/active_record_validations.html', library_id: 2, picture: 'http://www2.psd100.com/ppp/2013/10/0501/ruby-icon-1005094329.png')

Link.create(title: 'Ruby Guides - Associations', url:'http://guides.rubyonrails.org/association_basics.html', library_id: 2, picture: 'http://www2.psd100.com/ppp/2013/10/0501/ruby-icon-1005094329.png')

Link.create(title: 'Cooking Channel Home', url:'http://www.cookingchanneltv.com/home.html', library_id: 4, picture: 'http://nutritionalcookingsolutions.net/wp-content/uploads/2013/01/cooking_classes-picture.jpg')

Link.create(title: 'Grilling Main Dishes', url:'http://www.cookingchanneltv.com/recipes/grilling-main-dish-recipes.html', library_id: 4, picture: 'http://nutritionalcookingsolutions.net/wp-content/uploads/2013/01/cooking_classes-picture.jpg')

Link.create(title: 'Skirt Steak', url:'http://www.cookingchanneltv.com/recipes/alton-brown/skirt-steak.html', library_id: 4, picture: 'http://nutritionalcookingsolutions.net/wp-content/uploads/2013/01/cooking_classes-picture.jpg')

Link.create(title: 'Spain\'s Game of Thrones', url:'http://www.foreignaffairs.com/articles/141549/omar-g-encarnacion/spains-game-of-thrones', library_id: 5, picture: 'http://www.foreignaffairs.com/files/sitetheme_logo.gif')

Link.create(title: 'The Road to DDay', url:'http://www.foreignaffairs.com/articles/139455/rick-atkinson/the-road-to-d-day', library_id: 5, picture: 'http://www.foreignaffairs.com/files/sitetheme_logo.gif')

Link.create(title: 'Mind the Gap', url:'http://www.foreignaffairs.com/articles/141529/gareth-harding/mind-the-gap', library_id: 5, picture: 'http://www.foreignaffairs.com/files/sitetheme_logo.gif')

Note.create(body: 'Interesting read. Love this writer.', user_id: 1, link_id: 1)
Note.create(body: 'Wow!', user_id: 2, link_id: 2)
Note.create(body: 'So helpful', user_id: 4, link_id: 4)
Note.create(body: 'This always trips me up!', user_id: 2, link_id: 4)
Note.create(body: 'Love the Rails documentation...not.', user_id: 1, link_id: 5)
Note.create(body: 'I just went over this with my tutor!', user_id: 3, link_id: 5)
Note.create(body: 'Follow me on Twitter!', user_id: 1, link_id: 6)
Note.create(body: 'Have to try this...', user_id: 4, link_id: 7)
Note.create(body: 'Yummy!', user_id: 2, link_id: 7)
Note.create(body: 'I love food!', user_id: 3, link_id: 8)
Note.create(body: 'Vegetarians are missing out...', user_id: 1, link_id: 9)
Note.create(body: 'So glad summer foods are finally in season', user_id: 2, link_id: 9)
Note.create(body: 'In honor of the DDay anniversary', user_id: 2, link_id: 11)
Note.create(body: 'Must read', user_id: 1, link_id: 10)
Note.create(body: 'Important stuff', user_id: 2, link_id: 10)
Note.create(body: 'Incredible :)', user_id: 4, link_id: 11)
Note.create(body: 'So interesting!', user_id: 3, link_id: 12)


