# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
User.create!(
  role: 'patient',
  email: 'heloisa@girassol.com',
  password: '123123',
  username: 'heloisa',
  name: 'Heloísa',
  surname: 'Girassol',
  birthdate: Date.new(1995, 4, 8),
  description: 'Estou tendo crises de ansiedade que ainda não descobri a causa.',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'marcos@girassol.com',
  password: '123123',
  username: 'marcos',
  name: 'Marcos',
  surname: 'Girassol',
  birthdate: Date.new(1995, 7, 8),
  description: 'Tratamento para transtornos de ansiedade.',
  specialty: 'Psicanálise'
)

User.create!(
  role: 'therapist',
  email: 'sandra@girassol.com',
  password: '123123',
  username: 'sandra',
  name: 'Sandra',
  surname: 'Girassol',
  birthdate: Date.new(1970, 12, 5),
  description: 'Terapeuta com foco nas causas LGBTQI+.',
  specialty: 'Psicanálise'
)

User.create!(
  role: 'patient',
  email: 'andre@girassol.com',
  password: '123123',
  username: 'dezim95',
  name: 'André',
  surname: 'Lúcio',
  birthdate: Date.new(1995, 7, 10),
  description: 'Em busca de uma cura para a neurose através do método da individuação.',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'clovis@girassol.com',
  password: '123123',
  username: 'clovis',
  name: 'Clóvis',
  surname: 'Bicalho',
  birthdate: Date.new(1910, 10, 30),
  description: 'Não atendo às sexta-feiras',
  specialty: 'Psicanálise'
)

User.create!(
  role: 'therapist',
  email: 'giovanni@girassol.com',
  password: '123123',
  username: 'giovanni',
  name: 'Giovanni',
  surname: 'Piovesan',
  birthdate: Date.new(1995, 7, 10),
  description: 'Foco em pensamentos intrusivos e tendências suicidas. Em caso de emergência, me ligue.',
  specialty: 'Psicologia analítica'
)

User.create!(
  role: 'patient',
  email: 'pedro@girassol.com',
  password: '123123',
  username: 'pedro',
  name: 'Pedro',
  surname: 'Girassol',
  birthdate: Date.new(199, 7, 10),
  description: 'Estou desempregado e sem motivação para buscar um emprego.',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'vitor@girassol.com',
  password: '123123',
  username: 'vitor',
  name: 'Vitor',
  surname: 'Girassol',
  birthdate: Date.new(199, 7, 10),
  description: 'Trabalho com psicologia cognitivo-comportamental em conjunto com psicanálise.',
  specialty: 'Terapia cognitivo-comportamental'
)
