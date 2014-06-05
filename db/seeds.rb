# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find(1)
library = Library.create(title: 'Cool NYTimes', description: 'My favorite NYTimes articles')
user.libraries << library

Link.create(title: 'G.M. Says Inquiry Found "Pattern of Incompetence"', url:'http://www.nytimes.com/2014/06/06/business/gm-ignition-switch-internal-recall-investigation-report.html?hp&_r=0', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Link.create(title: 'Senate Confirms Burwell to Lead Health and Human Services', url:'http://www.nytimes.com/2014/06/06/us/politics/sylvia-mathews-burwell-confirmed-as-health-secretary.html?hp', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Link.create(title: 'BNP Exec Asked to Leave', url:'http://dealbook.nytimes.com/2014/06/05/bnp-executive-asked-to-leave-amid-investigation/?ref=business', library_id: 1, picture: 'http://kepler.nasa.gov/images/mws/NYtimesIcon2.jpg')

Note.create(body: 'Interesting read. Love this writer.', user_id: 1, link_id: 1)
Note.create(body: 'Need to read this for my paper on healthcare.', user_id: 1, link_id: 2)


