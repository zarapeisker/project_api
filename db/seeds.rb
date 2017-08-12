# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



language_list = LanguageList::COMMON_LANGUAGES

language_list.each do |language|
  Language.create!( name:language.name )
end


country_list = Country.all

country_list.each do |country|
  AppCountry.create!( name: country.name, languages:[Language.first] )
end


Organization.create!(language:Language.first, app_country:AppCountry.first, name:'Awesome Org', time_zone:Time.zone.now)
Subject.create!(name:'Math', level:'Advanced')
Teacher.create!(languages:[Language.first], organization:Organization.first, first_name:'Bob', last_name:'Smith', email:'bob@smith.com', skype_id:'bobsmith', linkedin:'bobsmith@linkedin.com', description:'Bob is cool.', time_zone:Time.zone.now)
Student.create!(subjects:[Subject.first], languages:[Language.first], organization:Organization.first, first_name:'Zaza', last_name:'Honey', email:'zaza@honey.com', skype_id:'zazahoney', description:'Zaza is cool.', time_zone:Time.zone.now)
CountryType.create!(teacher:Teacher.first, student:Student.first, app_country:AppCountry.first, kind:'residence')
Review.create!(stars:5, text:'This is one awesome person!')
Session.create!(review:Review.first, language:Language.first, teacher:Teacher.first, student:Student.first, subject:Subject.first, appointment:DateTime.now, status:'complete')
Experience.create!(teacher:Teacher.first, subject:Subject.first, ages:[1,2,3], work_experience:5, teaching_experience:4)

Language.all.each do |language|
  language.update( teachers:[Teacher.first], students:[Student.first], app_countries:[AppCountry.first] )
end

Subject.first.update(students:[Student.first])

User.create(email: 'user@example.com', nickname:'UOne', name: 'User One', password:'monkey67')

