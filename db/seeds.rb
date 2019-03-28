# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
require 'csv'


#filename = '/Volumes/Data/Work/insert_db/CITY.csv'
filename = '/home/pbelevich/Desktop/CITY.csv'

filearray = CSV.foreach(filename, headers: true).map(&:to_h)

tips = filearray.map{ |tiplist| tiplist['TIP'].gsub('.', '') }.uniq
tips.each { |tip| LocalityType.create!(short_name: tip) }
=end




require 'csv'

i = 0
j = 0
n = 0
#filename = '/Volumes/Data/Work/insert_db/CITY.csv'
filename = '/home/pbelevich/Desktop/CITY.csv'

filearray = CSV.foreach(filename, headers: true).map(&:to_h)

tips = filearray.map{ |tiplist| tiplist['TIP'].gsub('.', '') }.uniq
tips.each { |tip| LocalityType.create!(short_name: tip) }
typehash = LocalityType.pluck(:short_name, :id).to_h

oblhash = filearray.group_by { |obl| obl['OBL'] }

oblhash.each do |oblnm, oblnm_value|
  i += 1
  Region.create(name: oblnm)

  rayonname = oblnm_value.group_by {|rayon| rayon['RAION']}
  rayonname.each do |raynm, raynm_value|
    j += 1
    District.create(region_id: i, name: raynm)

    raynm_value.each do |nasnm|
      n = typehash[nasnm['TIP']]
      Locality.create(district_id: j, name: nasnm['NAME'], locality_type_id: n)
    end
  end
end

Center.create(name: 'Гродненский', district_id: '1', locality_id: '1', email: 'mail@mail.mail')

User.create(user_name: 'BelPaK', user_password: '123', center_id: '1', is_admin: '1')
User.create(user_name: 'Alex', user_password: '321', center_id: '1', is_admin: '1')