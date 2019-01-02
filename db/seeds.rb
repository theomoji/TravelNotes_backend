

ken = User.create(name: "Ken")

beijing = City.create(name: "Beijing", description: 
"Beijing is the capital of the People's Republic of China, the world's third most populous city proper, and most populous capital city. The city, located in northern China, is governed as a municipality under the direct administration of central government with 16 urban, suburban, and rural districts.[12] Beijing Municipality is surrounded by Hebei Province with the exception of neighboring Tianjin Municipality to the southeast; together the three divisions form the Jingjinji metropolitan region and the national capital region of China"
)

# beijing_trip = ken.notes.create(title:"Beijing Trip", content:"I want to visit the city and the old towns.")

Note.create(user_id: 1, city_id: 1, title: "Beijing Trip", content:"I want to visit the city and the old towns.")