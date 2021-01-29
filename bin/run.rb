require 'pry'
require_relative '../config/environment'

# puts "hello world"
# def greet
#     puts "Welcome to lousy reviews, the lousiest reviews in the whole flat Earth!!"
# end

# greet

# class CommandLineInterface
#     def greet 
#         puts "Welcome to lousy reviews, the lousiest reviews in the whole flat Earth!!"
#         sleep(1.25)
#         puts "Want an lousy review of a game by our user? Well we may or may not have one for you"
#         sleep(0.50)
#         puts "Enter what game you would like to review:"
#     end

# end
# binding.pry 

cli = CLI.new.run
