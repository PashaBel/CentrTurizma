# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


filename = '/Volumes/Data/Work/insert_db/CITY.csv'
#filename = '/home/pbelevich/Desktop/CITY.csv'

filearray = CSV.foreach(filename, headers: true).map(&:to_h)

tips = filearray.map{ |tiplist| tiplist['TIP'].gsub('.', '') }.uniq
tips.each { |tip| LocalityType.create!(short_name: tip) }



