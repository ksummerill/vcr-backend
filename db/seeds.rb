# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProjectPlan.create(name: "Ruthie")

Inventory.create(name: "Indoor", description: "All items inside the camper", project_plan_id: 1)
Inventory.create(name: "Metal Siding", description: "Items related to metal skins", project_plan_id: 1)

Supply.create(item: "Wood", project_plan_id: 1)
Supply.create(item: "Clamps", project_plan_id: 1)
