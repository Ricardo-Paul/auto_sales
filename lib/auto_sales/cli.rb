
class AutoSales::CLI


    def call
        list_auto
        menu
    end

    def list_auto
        puts <<-DOC
            Cars Model - Select the car you want more info on
        car_1 = model - sales - Assembly
        car_2 = model - sales - Assembly
        car_3 = model - sales - Assembly
        DOC
    end


    def menu
        puts" Enter the number of car to have more info"
        input = gets.strip

        while  "exit"
            case input
                when "1"
                    puts "more info on car_1"
                when "2"
                    puts "More info on car_2"
                when "3"
                    puts "more info on car_3"
            end
        end

 
    end


  end