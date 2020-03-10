#diddys market
require "colorize"
require "tty-table"

puts"
/$$$$$$$  /$$       /$$       /$$                                     /$$                          
| $$__  $$|__/      | $$      | $$                                    | $$                          
| $$  \ $$ /$$  /$$$$$$$  /$$$$$$$ /$$   /$$  /$$$$$$$        /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$ 
| $$  | $$| $$ /$$__  $$ /$$__  $$| $$  | $$ /$$_____/       /$$_____/| $$__  $$ /$$__  $$ /$$__ $$
| $$  | $$| $$| $$  | $$| $$  | $$| $$  | $$|  $$$$$$       |  $$$$$$ | $$  \ $$| $$   \ $$| $$   \ $$
| $$  | $$| $$| $$  | $$| $$  | $$| $$  | $$ \____  $$       \____   $$| $$  | $$| $$  | $$| $$  | $$
| $$$$$$$/| $$|  $$$$$$$|  $$$$$$$|  $$$$$$$ /$$$$$$$/       /$$$$$$$/| $$  | $$|  $$$$$$/| $$$$$$$/
|_______/ |__/ \_______/ \_______/ \____  $$|_______/        |_______/ |__/  |__/ \______/    |$$____/ 
                                   |   $$ |                                               | $$      
                                  | $$$$$$/                                               | $$      
                                   \______/                                                |__/ 
".colorize(:green)


puts "Time to get to work! grab your name tag"
puts "enter your name: "
    name = gets.chomp
    puts "Your shift is about to start #{name}"     
    # table = TTY::Table.new ['header1','header2'], [['a1', 'a2'], ['b1', 'b2']]
    # table.render(:ascii)
    
    #1 option for instructions
    #another option for "start game"
    #will need to write a menu
    #options to go into start game , instructions
    
    #add instructions other wise start the game

puts "ok, remember to try make as much money as you can without losing the customer! press... to continue)"

#want to have player press a/any key to continue

class Customer
    def initialize(customer1)
        @customer = customer1
    end
    def greet_customer(item)
        puts "hello #{@customer} i hear you're after a pair of #{item}, great choice! " #randomize choice of customer and item
    end
end

class Item 
    attr_reader :name
    def initialize(item)
        @name = item
    end
    def start_sale(item)
        puts "a customer walks in, They want some #{item}" 
    end
end

class Price #each item needs to be assigned a base price which can be "negotiated" by the user
    attr_reader :cost
    def initialize(price)
        @cost = price
    end
    def price_check(item)
        puts "here is a table of the price, anything above is commission! ;)"
        if #cons 100 jordans 150 timbs 200
            puts "$100"
        end
    end
end

list = ['converse', "jordans", "timberlands"]

item1 = Item.new(list[rand(0...list.length)])
item1.start_sale(item1.name)

customer_list = ["Big Poppa", "Swaggy P","Jezenizzle fo shizzle"]

customer1 = Customer.new(customer_list[rand(0...list.length)])
customer1.greet_customer(item1.name)

price = Price.new()
price.price_check()
        #character attributes 1 price equal or over up until 25
        #character attributes 1 price equal or over up until 50
        #character attributes 1 price equal or over up unyil 90


        #tty tables will hopefully work and i can put a price table cons: $100 jordans: $150 timbs: $200

       # puts "how much do you want to sell them for?"
       # offer = gets.chomp
        #if offer => 300
         #   puts "im not paying that!"
        #else
            #goes to customers specific prefferences
            #no customer will pay price +101 you are outside your mind all will take anything less than base price and say shut up and take my money
            #big poppa will take price =-25 over
            #swaggy will take price =-75 over
            #jezen will take -=90 and say ill take it cos i got that full-stack money
            #i have no idea where to even start with this
            #then profits will be added together to get the score
            #if the price is 0-20 over there range i want the player to have a secon chance of offering a price in the same turn
            #ie offer swaggy +80 and he will say maybe for a little less
            #then if in the prize zone take them if not then walk away

        