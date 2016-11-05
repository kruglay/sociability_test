require_relative "lib/test.rb"
require_relative "lib/result_printer.rb"

new_test = Test.new

new_test.answer_questions
ResultPrinter.print(new_test.points)