# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 r1 = Role.create({name: "lr_minimal", description: "Can't do much"})
 r2 = Role.create({name: "lr_future1", description: ""})
 r3 = Role.create({name: "lr_readonly", description: ""})
 r4 = Role.create({name: "lr_future2", description: ""})
 r5 = Role.create({name: "lr_create", description: ""})
 r6 = Role.create({name: "lr_future3", description: ""})
 r7 = Role.create({name: "lr_regular", description: "Can edit data, readonly lookup tables"})
 r8 = Role.create({name: "lr_future4", description: ""})
 r9 = Role.create({name: "lr_supervisor", description: "Can edit lookup tables"})
r10 = Role.create({name: "lr_future5", description: ""})
r11 = Role.create({name: "lr_delete", description: ""})
r12 = Role.create({name: "lr_future6", description: ""})
r13 = Role.create({name: "lr_vip", description: ""})
r14 = Role.create({name: "lr_future7", description: ""})
r15 = Role.create({name: "lr_special1", description: ""})
r16 = Role.create({name: "lr_seller", description: ""})
r17 = Role.create({name: "lr_future8", description: ""})
r18 = Role.create({name: "lr_admin", description: "Can perform any CRUD operation on any resource"})
 

# User.create! email: 'a@e.com', name: "admin", password: '12z34q1234wesdsd', password_confirmation: '12z34q1234wesdsd', role_id: r18.id
# User.create! email: '12341234', name: "admin", password: '12341234', password_confirmation: '12341234', role_id: r18.id
# u1 = User.create({name: "reg", email: "r", password: '12341234', password_confirmation: '12341234', role_id: r7.id})

