# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ruthie = Project.create(name: "Ruthie")

Inventory.create(name: "Indoor", description: "All items inside the camper", project_id: ruthie.id)
Inventory.create(name: "Metal Siding", description: "Items related to metal skins", project_id: ruthie.id)

Supply.create(item: "Wood", project_id: ruthie.id)
Supply.create(item: "Clamps", project_id: ruthie.id)

Vote.create(count: 3, project_id: ruthie.id)
