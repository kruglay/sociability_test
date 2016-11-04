require "./test.rb"
require "./print_result.rb"

new_test = Test.new

new_test.answer_questions
PrintResult.print(new_test.points)