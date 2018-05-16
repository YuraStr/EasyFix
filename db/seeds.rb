# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'yura.str1996@mail.ru', password: '123456', username: 'Yury Strukau')

Level.create(name: 'DEV', test_level: 'DEV')
Level.create(name: 'UAT', test_level: 'SYS')
Level.create(name: 'E2E', test_level: 'REL')
Level.create(name: 'PRD', test_level: 'PRD')

MemberType.create([{ name: 'ARCHDEF' }, { name: 'PLI' }])

Fix.create(number: 'ADM66778', description: 'OPC Slack batch monitor.', level_id: 1, user_id: 1)

PromotionForm.create(name: 'A778V01', fix_id: 1, description: 'Initial form', level_id: 1)

Member.create(name: 'A778V01', member_type_id: 1, promotion_form_id: 1)

MemberLocation.create(member_type_id: 2, level_id: 1, location: 'CFRR066.DEV.PLI')