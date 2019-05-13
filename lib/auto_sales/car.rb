class AutoSales::Car
    attr_accessor :model, :sales, :assembly
    def self.car_info
        puts "List of automobile sales by model"
        self.scrape_cars
       #         puts <<-DOC
       #     List of automobiles sales by Model
       #     Cars Model - Select the car you want sales information on
       # car_1 = model - sales - Assembly
       # car_2 = model - sales - Assembly
       # car_3 = model - sales - Assembly
       # DOC
    end

    def self.scrape_cars
        cars = []
cars << self.car_1
cars << self.car_2
cars << self.car_3
        cars
    end

    def self.car_1
        doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_automobile_sales_by_model"))
        car_1 = self.new
        car_1.model = doc.search("table.wikitable i a")[0].text
        car_1.sales = doc.search("table.wikitable td")[2].text
        car_1.assembly = doc.search("table.wikitable td")[3].text
        car_1
    end

    def self.car_2
        doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_automobile_sales_by_model"))
        car_2 = self.new
        car_2.model = doc.search("table.wikitable i a")[1].text
        car_2.sales = doc.search("table.wikitable td")[6].text
        car_2.assembly = doc.search("table.wikitable td")[7].text
        car_2
    end

    def self.car_3
        doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_automobile_sales_by_model"))
        car_3 = self.new
        car_3.model = doc.search("table.wikitable i a")[3].text
        car_3.sales = doc.search("table.wikitable td")[15].text
        car_3.assembly = doc.search("table.wikitable td")[16].text
        car_3
    end

end