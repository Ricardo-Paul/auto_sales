
class AutoSales::CLI

    def call
        list_auto
        menu
    end

    def list_auto
        @cars = AutoSales::Car.car_info
        @cars.each.with_index(1) {|car, i| puts " #{i}. #{car.model}"}
    end

    def menu
puts" Enter the number of car to have more info / and 'show' to display the list "
        input = nil
        while  input != "exit"
            
            input = gets.strip
            if input.to_i > 0
                selected_car = @cars[input.to_i - 1]
                puts "-----------------------------------------------------------"
                puts " MODEL |    SALES             | ASSEEMBLY (country)"
                puts "-----------------------------------------------------------"

                puts "#{selected_car.model} - #{selected_car.sales} - #{selected_car.assembly}"
            elsif input == "show"
                puts "-------------"
                puts " MODELS ONLY"
                puts "------------"
                list_auto
            else
                puts "Please enter a valid number"
            end
        end
    end

  end