require_relative "lib/test.rb"
require_relative "lib/print_result.rb"

new_test = Test.new

new_test.answer_questions
PrintResult.print(new_test.points)