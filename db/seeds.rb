# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
primeraA=Team.create([{name: 'Pias A'},{name: 'Pias B'},{name: 'Rojas A'},{name: 'Barrio Parque A'},{name: 'Alta Gracia'},{name: 'Universitarios'},{name: 'CIEF'},{name: 'Villa Maria Handball'}])
leagues=League.create([{name: 'Primera A Masculiino'},{name: 'Primera A Femenino'},{name: 'Primera B Masculino'},{name: 'Primera B Masculino'}])
