require 'pry'

class CLI
    attr_reader :user

    def run
        loop do 
        greet
        user = log
        list
        end 
    end

    def greet
        puts "Welcome to lousy reviews, the lousiest reviews in the whole flat Earth!!"
    end

    def log
        puts "Do you have an account? If not sign up now!"
        answer = gets.chomp
        @user = User.find_or_create_by(name: answer)
        puts "Welcome, #{@user.name.capitalize}."
    end

    def list 
        puts "select a game you want to view"
        puts Game.all.map{|game| game.name}
        answer = gets.chomp
        @game = Game.find_or_create_by(name: answer)
        puts "Ah yes I knew you'd pick that."
        puts "Now what to do with #{@game.name.capitalize}?"

            loop do 
                menu
                choice = gets.chomp
                case choice
                when "1"
                    puts "Write your review."
                    answer = gets.chomp 
                    @review = Review.find_or_create_by(user_id: @user.id, game_id: @game.id, message: answer)
                    @review.save 
                    puts "Dang really?"
                when "2"
                   display(@game)
                when "3"
                    break 
                when "4"
                    puts "Enter number of what review you want to delete."
                    arr = Review.all.select{|review| review.user_id == @user.id}
                    arr.each.with_index(1) do |review, i|
                        puts "#{i}. #{review.message}"
                    end
                    answer = gets.chomp.to_i 
                    arr[answer-1].delete
                    puts "review has been deleted."
                    # binding.pry
                when "5"
                    puts "Enter Number of What Review you cant to delete."
                    arr = Review.all.select{|review| review.user_id == @user.id}
                    arr.each.with_index(1) do |review, i|
                        puts "#{i}. #{review.message}"
                    end
                    answer = gets.chomp.to_i
                    puts "Update your Review."
                    new_m = gets.chomp
                    new_a = arr[answer-1]
                    new_a.message = new_m
                    new_a.save 
                    puts "Review Updated."
                    # binding.pry
                when "6"
                    exit 
                end
            end
    end

    def display(game)
        arr = Review.all.select do |review|
            review.game_id == game.id 
        end
        arr2 = arr.map{|review| puts review.message}

    end

    def menu 
        puts "(1) Write a review"
        puts "(2) View all reviews"
        puts "(3) Back to menu"
        puts "(4) Delete a review"
        puts "(5) Update Reveiw"
        puts "(6) Exit"
    end
end

 