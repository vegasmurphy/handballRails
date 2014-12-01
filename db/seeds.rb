# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
primeraA=Team.create([{name: 'Pias A'},{name: 'Pias B'},{name: 'Rojas A'},{name: 'Barrio Parque A'},{name: 'Alta Gracia'},{name: 'Universitarios'},{name: 'CIEF'},{name: 'Villa Maria Handball'}])
primeraB=Team.create([{name: 'Talleres'},{name: 'Rojas B'},{name: 'Atenas A'},{name: 'Arroyito'},{name: 'Aleman'},{name: 'UTN'}])
leagues=League.create([{name: 'Primera A Masculiino'},{name: 'Primera A Femenino'},{name: 'Primera B Masculino'},{name: 'Primera B Masculino'}])
tournament=Tournament.create({year: 2014, semester: 2, league_id: leagues.first.id})
TeamTournament.create([{team_id: primeraA[0].id,tournament_id:tournament.id}])
primeraA.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end
tournament=Tournament.create({year: 2014, semester: 2, league_id: leagues[2].id})
primeraB.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end