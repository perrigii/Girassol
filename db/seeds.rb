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
  birthdate: Date.new(1991, 7, 10),
  description: 'Trabalho com psicologia cognitivo-comportamental em conjunto com psicanálise.',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'therapist',
  email: 'juliana@girassol.com',
  password: '123123',
  username: 'juliana',
  name: 'Juliana',
  surname: 'Girassol',
  birthdate: Date.new(1988, 8, 8),
  description: 'Terapia cognitivo-comportamental com foco em episódios traumáticos.',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'patient',
  email: 'ana@girassol.com',
  password: '123123',
  username: 'ana',
  name: 'Ana',
  surname: 'Girassol',
  birthdate: Date.new(2000, 7, 3),
  description: 'Estou tendo crises terríveis de insônia.',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'bruna@girassol.com',
  password: '123123',
  username: 'bruna',
  name: 'Bruna',
  surname: 'Girassol',
  birthdate: Date.new(1990, 9, 2),
  description: 'Terapia com foco em transtornos de personalidade',
  specialty: 'Psicologia analítica'
)

User.create!(
  role: 'patient',
  email: 'miguel@girassol.com',
  password: '123123',
  username: 'miguel',
  name: 'Miguel',
  surname: 'Girassol',
  birthdate: Date.new(1997, 12, 5),
  description: 'Comecei a tomar antidepressivos e piorei',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'alice@girassol.com',
  password: '123123',
  username: 'alice',
  name: 'Alice',
  surname: 'Girassol',
  birthdate: Date.new(1971, 11, 7),
  description: 'Terapia com comprovações científicas positivas para o tratamento de Transtorno Afetivo Bipolar (TAB)',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'patient',
  email: 'helena@girassol.com',
  password: '123123',
  username: 'helena',
  name: 'Helena',
  surname: 'Girassol',
  birthdate: Date.new(2001, 3, 13),
  description: 'Tenho questões que envolvem validação externa sobre tudo o que faço',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'adriana@girassol.com',
  password: '123123',
  username: 'adriana',
  name: 'Adriana',
  surname: 'Girassol',
  birthdate: Date.new(1988, 10, 5),
  description: 'Terapia cognitivo-comportamental com foco em fobia social',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'therapist',
  email: 'francisco@girassol.com',
  password: '123123',
  username: 'francisco',
  name: 'Francisco',
  surname: 'Girassol',
  birthdate: Date.new(1989, 6, 21),
  description: 'Terapia para tratamento do transtorno de ansiedade generalizada (TAG)',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'patient',
  email: 'camila@girassol.com',
  password: '123123',
  username: 'camila',
  name: 'Camila',
  surname: 'Girassol',
  birthdate: Date.new(1997, 12, 23),
  description: 'Tenho em sentido completamente vazia.',
  specialty: ''
)

User.create!(
  role: 'therapist',
  email: 'elisa@girassol.com',
  password: '123123',
  username: 'elisa',
  name: 'Elisa',
  surname: 'Girassol',
  birthdate: Date.new(1970, 12, 5),
  description: 'Terapia com foco no tratamento da Distimia',
  specialty: 'Psicologia analítica'
)

User.create!(
  role: 'therapist',
  email: 'hugo@girassol.com',
  password: '123123',
  username: 'hugo',
  name: 'Hugo',
  surname: 'Girassol',
  birthdate: Date.new(1981, 8, 25),
  description: 'Atendo pessoas com problemas com dependência química.',
  specialty: 'Terapia cognitivo-comportamental'
)


User.create!(
  role: 'therapist',
  email: 'afonso@girassol.com',
  password: '123123',
  username: 'afonso',
  name: 'Afonso',
  surname: 'Girassol',
  birthdate: Date.new(1996, 11, 9),
  description: 'Atendo conflitos familiares com abordagem analítica sobre a situação.',
  specialty: 'Psicanálise'
)


User.create!(
  role: 'therapist',
  email: 'gabriela@girassol.com',
  password: '123123',
  username: 'gabriela',
  name: 'Gabriela',
  surname: 'Girassol',
  birthdate: Date.new(1993, 1, 21),
  description: 'Atendo pessoas que portam transtornos psicóticos',
  specialty: 'Psicologia analítica'
)


User.create!(
  role: 'therapist',
  email: 'isabela@girassol.com',
  password: '123123',
  username: 'isabela',
  name: 'Isabela',
  surname: 'Girassol',
  birthdate: Date.new(1990, 3, 3),
  description: 'Posso lhe ajudar com tratamento para transtorno de déficit de atenção e hiperatividade (TDAH).',
  specialty: 'Psicologia analítica'
)


User.create!(
  role: 'therapist',
  email: 'heitor@girassol.com',
  password: '123123',
  username: 'heitor',
  name: 'Heitor',
  surname: 'Girassol',
  birthdate: Date.new(1986, 4, 5),
  description: 'Sou especializado para atender pessoas no espectro autista.',
  specialty: 'Terapia cognitivo-comportamental'
)


User.create!(
  role: 'therapist',
  email: 'sonia@girassol.com',
  password: '123123',
  username: 'sonia',
  name: 'Sonia',
  surname: 'Girassol',
  birthdate: Date.new(1968, 5, 31),
  description: 'Ofereço tratamento para demência.',
  specialty: 'Psicologia analítica'
)


User.create!(
  role: 'therapist',
  email: 'madalena@girassol.com',
  password: '123123',
  username: 'madalena',
  name: 'Madalena',
  surname: 'Girassol',
  birthdate: Date.new(1974, 7, 5),
  description: 'Terapeuta capacitada para o tratamento do transtorno obsessivo-compulsivo (TOC).',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'therapist',
  email: 'benjamin@girassol.com',
  password: '123123',
  username: 'benjamin',
  name: 'Benjamin',
  surname: 'Girassol',
  birthdate: Date.new(1992, 9, 30),
  description: 'Terapeuta qualificado para tratamento da Depressão Maior.',
  specialty: 'Terapia cognitivo-comportamental'
)

User.create!(
  role: 'therapist',
  email: 'bernardo@girassol.com',
  password: '123123',
  username: 'bernardo',
  name: 'Bernardo',
  surname: 'Girassol',
  birthdate: Date.new(1995, 3, 1),
  description: 'Tratamento para o transtorno de personalidade Borderline (TPB).',
  specialty: 'Psicologia analítica'
)

User.create!(
  role: 'therapist',
  email: 'lorena@girassol.com',
  password: '123123',
  username: 'lorena',
  name: 'Lorena',
  surname: 'Girassol',
  birthdate: Date.new(1991, 8, 2),
  description: 'Terapeuta especializada em transtornos do humor.',
  specialty: 'Psicologia analítica'
)
