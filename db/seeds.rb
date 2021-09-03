# Limpando database
Answer.destroy_all
Choice.destroy_all
Question.destroy_all
Quizroom.destroy_all
User.destroy_all

# Inicializando: Quizrooms e Users
quiz_room_a = Quizroom.create! name:"Geografia geral"
quiz_room_b = Quizroom.create! name:"Geofísica"
teacher = User.create! name:"Thiago", email:"thiago@professor.com", password:"senha123", teacher:true
student_a = User.create! name:"Paulo", email:"paulo@estudante.com", password:"senha123"
student_b = User.create! name:"Olívia", email:"olivia@estudante.com", password:"senha123"

# Criando Questões: Question
question_a = Question.new subject:"Geografia geral", utterance:"Qual é a capital do Brasil?"
question_a.quizroom = quiz_room_a
question_a.user = teacher
question_a.save!

question_b = Question.new subject:"Geofísica", utterance:"A Lua é um(a):"
question_b.quizroom = quiz_room_b
question_b.user = teacher
question_b.save!

question_c = Question.new subject:"Geografia geral", utterance:"Em que continente se localiza o Vietnã?"
question_c.quizroom = quiz_room_a
question_c.user = teacher
question_c.save!

# Criando opções: Choices
options_a = ["Brasília", "Rio de Janeiro", "São Paulo", "Belo Horizonte", "Salvador"]
options_a.each do |option|
  choice = Choice.new
  choice.option = option
  choice.correct_option = option == "Brasília"
  choice.question = question_a
  choice.quizroom = quiz_room_a
  choice.save!
end

options_b = ["Estrela", "Planeta", "Satélite Natural", "Cometa", "Anã Branca"]
options_b.each do |option|
  choice = Choice.new
  choice.option = option
  choice.correct_option = option == "Satélite Natural"
  choice.question = question_b
  choice.quizroom = quiz_room_b
  choice.save!
end

options_c = ["América", "Oceania", "África", "Europa", "Ásia"]
options_c.each do |option|
  choice = Choice.new
  choice.option = option
  choice.correct_option = option == "Ásia"
  choice.question = question_c
  choice.quizroom = quiz_room_a
  choice.save!
end

# Criando respostas à uma questão: Answer
# Para questão a
find_choice_1a = Choice.find_by option: "Rio de Janeiro"
answer_1a = Answer.new
answer_1a.choice = find_choice_1a
answer_1a.question = question_a
answer_1a.quizroom = quiz_room_a
answer_1a.user = student_a
answer_1a.save!

find_choice_2a = Choice.find_by option: "Brasília"
answer_2a = Answer.new
answer_2a.choice = find_choice_2a
answer_2a.question = question_a
answer_2a.quizroom = quiz_room_a
answer_2a.user = student_b
answer_2a.save!
# Para questão b
find_choice_1b = Choice.find_by option: "Satélite Natural"
answer_1b = Answer.new
answer_1b.choice = find_choice_1b
answer_1b.question = question_b
answer_1b.quizroom = quiz_room_b
answer_1b.user = student_a
answer_1b.save!

find_choice_2b = Choice.find_by option: "Anã Branca"
answer_2b = Answer.new
answer_2b.choice = find_choice_2b
answer_2b.question = question_b
answer_2b.quizroom = quiz_room_b
answer_2b.user = student_b
answer_2b.save!
