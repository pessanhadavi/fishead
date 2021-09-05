# Limpando database
Answer.destroy_all
Choice.destroy_all
Question.destroy_all
Quizroom.destroy_all
User.destroy_all

# Inicializando: Quizrooms e Users
geografia_geral = Quizroom.create! name:"Geografia geral"
astronomia = Quizroom.create! name:"Astronomia"
geofisica = Quizroom.create! name:"Geofísica"
teacher = User.create! name:"Thiago", email:"thiago@professor.com", password:"senha123", teacher:true
student_a = User.create! name:"Paulo", email:"paulo@estudante.com", password:"senha123"
student_b = User.create! name:"Olívia", email:"olivia@estudante.com", password:"senha123"

# Criando Questões: Question
def create_question(subject, utterance, quizroom, options, correct_option)
  question = Question.new subject: subject, utterance: utterance
  question.quizroom = quizroom
  question.user = User.first
  question.save!
  create_choices(options, correct_option, question, question.quizroom)
end

# Criando opções: Choices
def create_choices(options, correct_option, question, quizroom)
  options.each do |option|
    choice = Choice.new
    choice.option = option
    choice.correct_option = option == correct_option
    choice.question = question
    choice.quizroom = quizroom
    choice.save!
  end
end

create_question(
  "Geografia geral",
  "Qual é a capital do Brasil?",
  geografia_geral,
  options = ["Brasília", "Rio de Janeiro", "São Paulo", "Belo Horizonte", "Salvador"],
  options[0]
)

create_question(
  "Geografia geral",
  "Em que continente se localiza o Vietnã?",
  geografia_geral,
  options = ["África", "América", "Oceania", "Ásia", "Europa"],
  options[3]
)

create_question(
  "Geografia geral",
  "Qual é o clima do Brasil?",
  geografia_geral,
  options = ["Temperado", "Polar", "Tropical", "Desértico", "Mediterrâneo"],
  options[2]
)

create_question(
  "Geografia geral",
  "Qual desses se encontra no Sul do Brasil?",
  geografia_geral,
  options = ["Ceará", "São Paulo", "Sergipe", "Paraná", "Roraima"],
  options[3]
)

create_question(
  "Astronomia",
  "A lua é um(a):",
  astronomia,
  options = ["Planeta", "Satélite Natural", "Estrela", "Cometa", "Anã Branca"],
  options[1]
)

create_question(
  "Astronomia",
  "O 2º planeta do Sistema Solar é...",
  astronomia,
  options = ["Marte", "Terra", "Saturno", "Plutão", "Vênus"],
  options[4]
)

create_question(
  "Astronomia",
  "Quantos planetas tem o Sistema Solar?",
  astronomia,
  options = ["10", "9", "11", "8", "7"],
  options[1]
)

create_question(
  "Astronomia",
  "De onde vem o superman?",
  astronomia,
  options = ["Piauí", "Marte", "Krypton", "EUA", "Andrômeda"],
  options[1]
)

create_question(
  "Geofísica",
  "Qual deles é um gato da Ângela?",
  geofisica,
  options = ["Bandit", "Fluffy", "Bob", "Pepper", "Cookie"],
  options[0]
)

create_question(
  "Geofísica",
  "Qual desses você escolhe?",
  geofisica,
  options = ["Karate", "Bears", "Beets", "Battlestar Galactica", "Todas as opções"],
  options[4]
)

create_question(
  "Geofísica",
  "Andy é um bom personagem?",
  geofisica,
  options = ["Sim", "Sim", "Não", "Sim", "Sim"],
  options[2]
)

create_question(
  "Geofísica",
  "Quem é o primeiro noivo de Pam?",
  geofisica,
  options = ["Jim", "Roy", "Dwight", "Michael", "Toby"],
  options[1]
)
