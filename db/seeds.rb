# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Equipos de las ligas
primeraA=Team.create([{name: 'Pias A', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/EscuelasPiasA200x200.png'},{name: 'Pias B', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/EscuelasPiasB200x200.png'},{name: 'Rojas A', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/AsociacionCRojasA200x200.png'},{name: 'Barrio Parque A', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHF/BarrioParque200x200.png'},{name: 'Alta Gracia', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHF/MunicipalidaddeAltaGracia200x200.png'},{name: 'Universitarios', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/ClubUniversitario200x200.png'},{name: 'CIEF', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/CiefVillaMariacutea200x200.png'},{name: 'Villa Maria Handball', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/VillaMariaHandball200x200.png'},{name: 'Robles', logo_link: ''},{name: 'UTN', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/UTN200x200.png'}])
primeraB=Team.create([{name: 'Talleres', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubAtleticoTalleres200x200.png'},{name: 'Empalme', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubSportivoEmpalme200x200c.png'},{name: 'Rojas B', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/AsociacionCRojasA200x200.png'},{name: 'U.N.R.C', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/UNRC200x200.png'},{name: 'Juniors', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/GeneralPazJuniors200x200.png'},{name: 'Aleman', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ColegioAlemaacuten200x200.png'},{name: 'Villa Allende', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubAtleticoQuilmesVillaAllende200x200.png'},{name: 'Laguna Larga', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubSportivoLagunaLarga200x200.png'},{name: 'Rio Ceballos', logo_link: ''},{name: 'Casino', logo_link: ''},{name: 'Banco de Cordoba', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubBancodeCoacuterdoba200x200.png'},{name: 'Barrio Parque B', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHF/BarrioParque200x200.png'}])
femeninoA=Team.create([{name: 'Union Electrica'},{name: 'Barrio Parque', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/BarrioParque200x200.png'},{name: 'Banco de Cordoba', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubBancodeCoacuterdoba200x200.png'},{name: 'Alta Gracia', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHF/MunicipalidaddeAltaGracia200x200.png'},{name: 'C.I.E.F', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/CiefVillaMariacutea200x200.png'},{name: 'Rojas', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/AsociacionCRojasA200x200.png'},{name: 'Universitarios', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/ClubUniversitario200x200.png'},{name: 'Talleres', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubAtleticoTalleres200x200.png'}])
femeninoB = Team.create([{name: 'Casino'},{name: 'Union Electrica B'},{name: 'Laguna Larga', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubSportivoLagunaLarga200x200.png'},{name: 'Talleres B', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubAtleticoTalleres200x200.png'},{name: 'Colegio Robles'},{name: 'Quilmes Villa Allende', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/PrimeraBMasculina/ClubAtleticoQuilmesVillaAllende200x200.png'},{name: 'Rojas B', logo_link: 'http://i11.photobucket.com/albums/a153/Agustin_F/PaginaWebHandball/LHM/AsociacionCRojasA200x200.png'}])
#Ligas
leagues=League.create([{name: 'Liga de Honor Masculino'},{name: 'Liga de Honor Femenino'},{name: 'Primera B Masculino'},{name: 'Primera B Femenino'}])

#Agregado de equipos a cada liga
tournament=Tournament.create({year: 2015, semester: 1, league_id: leagues.first.id})
primeraA.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end

tournament=Tournament.create({year: 2015, semester: 1, league_id: leagues[2].id})
primeraB.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end

tournament=Tournament.create({year: 2015, semester: 1, league_id: leagues[1].id})
femeninoA.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end

tournament=Tournament.create({year: 2015, semester: 1, league_id: leagues[3].id})
femeninoB.each do |team|
	TeamTournament.create({team_id: team.id,tournament_id:tournament.id})
end

#Agregado de jugadores a equipos
players = Player.create([{name: 'Vegas Murphy'},{name: 'Agustin Foresta'}])
players.each do |player|
	PlayerTeamTournament.create({player_id: player.id, team_id: primeraB[0].id,tournament_id: tournament.id})
end
