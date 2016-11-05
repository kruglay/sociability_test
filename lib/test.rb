class Test
  def initialize
    @points = 0
    @questions = 
    [
      "Переживаете ли вы в ожидании важной деловой встречи?",
      "Если вам поручат выступить с докладом на каком либо мероприятии, вызовет ли это у вас чувство дискомфорта?",
      "Вы откладываете поход к врачу до последнего момента?",
      "Если вам предстоит командировка в незнакомый город, постараетесь ли вы избежать этой командировки?",
      "Вы делитесь своими мыслями и чувствами с кем бы то ни было?",
      "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом?",
      "Вы думаете, что людям разных поколений действительно трудно понимать друг друга?",
      "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, взятые у вас несколько месяцев назад?",
      "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
      "Вы заговорите с незнакомым человеком, оставшись с ним наедине?",
      "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее?",
      "Вам неприятно быть судьей в чужих конфликтах?",
      "Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь к чужому мнению?",
      "Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос, вы предпочтете промолчать и не исправлять его?",
      "Просьбы помочь в учебе или работе раздражают вас?",
      "Вам проще изложить свое мнение на бумаге, чем рассказать о нем?"
    ]
  end

  # answer the question
  def answer_questions
    answers_points = Hash["a", 2, "b", 0, "c", 1]
    answers_description = "answer a - yes, b - no, c - sometimes"

    @questions.each do |question|
      @points += get_question_points(answers_points, answers_description, question)
    end
  end

  # return points for question
  def get_question_points(answers_points, answers_description, question)
    begin
      puts question
      puts answers_description

      chois = STDIN.gets.chomp
      answer_points = answers_points[chois]
      puts "wrong answer, try again" if answer_points.nil?
    end until answer_points

    answer_points
  end

  # getter
  def points
    @points
  end
end