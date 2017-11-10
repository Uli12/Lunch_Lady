# regex 

@main = [
  {item: 'Steak', price: 20},
  {item: 'Grilled shrimp', price: 20},
  {item: 'Grilled vegetables', price: 15}
]
@side = [
  {item: 'Mashed Potatoes', price: 5},
  {item: 'Grilled Asparagus', price: 4},
  {item: 'Rice Pilaf', price: 4}
]
@total_item = []
@total_price = []

def menu
  puts "Welcome to Craig's!"
  selection_1
  selection_2
  final
  checkout
  puts "Thank you for dining at Craig's!"
end

def selection_1
  puts "Please select a main dish."

    @main.each_with_index { |food, index| 
    puts "#{index + 1}) #{food[:item]} $#{food[:price]}"
}
  
  name = gets.chomp.to_i
  if name == 1
    puts "Steak $20"
    @total_item << @main[0][:item]
    @total_price << @main[0][:price]
  elsif name == 2
      puts "Grilled Shrimp $20"
      @total_item << @main[1][:item]
      @total_price << @main[1][:price]
  elsif name == 3
      puts "Grilled Vegetables $15"
      @total_item << @main[2][:item]
      @total_price << @main[2][:price]
  else
    puts "Invalid input. Please try again."
  end
end

def selection_2
    puts "Please select a side dish."
  
      @side.each_with_index {|food, index|
      puts "#{index + 1}) #{food[:item]} $#{food[:price]}"
}
    
    name = gets.chomp.to_i
  if name == 1
      puts "Mashed Potatoes $5"
      @total_item << @side[0][:item]
      @total_price << @side[0][:price]
      
  elsif name == 2
      puts "Grilled Asparagus $4"
      @total_item << @side[0][:item]
      @total_price << @side[0][:price]
      
  elsif name == 3
      puts "Rice Pilaf $4"
      @total_item << @side[0][:item]
      @total_price << @side[0][:price]
     
  else
      puts "Invalid input. Please try again."
      
  end
    
end
  
def final
      puts "Please select another side item."
      
          @side.each_with_index {|food, index|
          puts "#{index + 1}) #{food[:item]} $#{food[:price]}"
    }
        
      name = gets.chomp.to_i
  if name == 1
    puts "Mashed Potatoes $5"
    @total_item << @side[0][:item]
    @total_price << @side[0][:price]
          
  elsif name == 2
    puts "Grilled Asparagus $4"
    @total_item << @side[0][:item]
    @total_price << @side[0][:price]
          
  elsif name == 3
    puts "Rice Pilaf $4"
    @total_item << @side[0][:item]
    @total_price << @side[0][:price]
         
  else
    puts "Invalid input. Please try again."
          
  end
    
end

def checkout
    puts "Your order consists of: "
    puts @total_item.join(', ')
    puts "Your total is: $" + @total_price.reduce(0, :+).to_s
    
end



menu
    

  
 