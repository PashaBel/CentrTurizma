# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

#filename = 'db/CITY.csv'
#filecenters = 'db/Centers.csv'

#filearray = CSV.foreach(filename, headers: true).map(&:to_h)
#filecentersarray = CSV.foreach(filecenters, headers: true).map(&:to_h)

# tips = filearray.map{ |tiplist| tiplist['TIP'].gsub('.', '') }.uniq
# tips.each { |tip| LocalityType.create!(short_name: tip) }
# typehash = LocalityType.pluck(:short_name, :id).to_h
#
# oblhash = filearray.group_by { |obl| obl['OBL'] }
#
# oblhash.each do |oblnm, oblnm_value|
#   regionid = Region.create(name: oblnm)
#
#   rayonname = oblnm_value.group_by {|rayon| rayon['RAION']}
#   rayonname.each do |raynm, raynm_value|
#     districtid = District.create(region_id: regionid.id, name: raynm)
#
#       centrrayon = filecentersarray.group_by { |cr| cr['rayon'] }
#       if raynm == centrrayon['rayon'] && oblnm == 'ГРОДНЕНСКАЯ ОБЛАСТЬ'
#         centrrayon.each do
#           if centrrayon['centr_true'] == 1
#             Center.create(name: centrname, district_id: distrid.id, locality_id: locid.id, email: 'mail@mail.mail')
#           else
#
#           end
#         end
#       end
#
#     raynm_value.each do |nasnm|
#       Locality.create(district_id: districtid.id, name: nasnm['NAME'], locality_type_id: typehash[nasnm['TIP']])
#     end
#   end
# end

# filecentersarray.each do |elem|
#   distrid = District.find_by(name: elem['rayon'])
#   loc = elem['locality_centr_tur']||elem['locality_otd_obr']
#   locid = Locality.find_by(name: loc, district_id: distrid.id)
#   centrname = elem['name_centr_tur']||elem['name_otd_obr']
#   Center.create(name: centrname, district_id: distrid.id, locality_id: locid.id, email: 'mail@mail.mail')
# end


User.create(user_name: 'BelPaK', user_password: '123', center_id: 1, is_admin: 1)
User.create(user_name: 'Alex', user_password: '321', center_id: 1, is_admin: 1)
