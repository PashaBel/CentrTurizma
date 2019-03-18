# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Region.create(name: 'Брестская область')
Region.create(name: 'Витебская область')
Region.create(name: 'Гомельская область')
Region.create(name: 'Гродненская область')
Region.create(name: 'Минская область')
Region.create(name: 'Могилёвская область')
District.create(region_id: 4, name: 'Берестовицкий район')
District.create(region_id: 4, name: 'Волковысский район')
District.create(region_id: 4, name: 'Вороновский район')
District.create(region_id: 4, name: 'Гродненский район')
District.create(region_id: 4, name: 'Дятловский район')
District.create(region_id: 4, name: 'Зельвенский район')
District.create(region_id: 4, name: 'Ивьевский район')
District.create(region_id: 4, name: 'Кореличский район')
District.create(region_id: 4, name: 'Лидский район')
District.create(region_id: 4, name: 'Мостовский район')
District.create(region_id: 4, name: 'Новогрудский район')
District.create(region_id: 4, name: 'Ошмянский район')
District.create(region_id: 4, name: 'Островецкий район')
District.create(region_id: 4, name: 'Свислочский район')
District.create(region_id: 4, name: 'Слонимский район')
District.create(region_id: 4, name: 'Сморгонский район')
District.create(region_id: 4, name: 'Щучинский район')
District.create(region_id: 4, name: 'Ленинский район')
District.create(region_id: 4, name: 'Октябрьский район')
Center.create(name: 'Гродненский областной центр туризма и краеведения', district_id: 4, locality_id: 1, email: 'grodno@center.com')
Center.create(name: 'Зельвенский областной центр туризма и краеведения', district_id: 6, locality_id: 2, email: 'zelva@center.com')
User.create(user_name: 'BelPaK', user_password: 1234, center_id: 1, is_admin: 1)
User.create(user_name: 'Alex', user_password: 4321, center_id: 2, is_admin: 1)



