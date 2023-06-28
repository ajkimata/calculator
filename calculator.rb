def get_number_from_user
    puts "calculator"
    print "Enter a number: "
    begin
      Float(gets.chomp)
    rescue ArgumentError
      puts "Invalid input. Please enter a valid number."
      retry
    end
  end
  
  def get_operation_from_user
    print "Enter an operation (+, -, *, /): "
    operation = gets.chomp.strip
    until ["+", "-", "*", "/"].include?(operation)
      puts "Invalid input. Please enter a valid operation."
      print "Enter an operation (+, -, *, /): "
      operation = gets.chomp.strip
    end
    operation
  end
  
  def calculate_result(first_number, second_number, operation)
    case operation
    when "+"
      first_number + second_number
    when "-"
      first_number - second_number
    when "*"
      first_number * second_number
    when "/"
      if second_number == 0
        nil
      else
        first_number / second_number
      end
    end
  end
  
  def display_error_message(message)
    puts "Error: #{message}"
  end
  
  def display_result(result)
    puts "The result is: #{result}"
  end
  
  def calculator_app
    first_number = get_number_from_user
    second_number = get_number_from_user
    operation = get_operation_from_user
  
    result = calculate_result(first_number, second_number, operation)
  
    if result.nil?
      display_error_message("Division by zero is not allowed.")
    else
      display_result(result)
    end
  end
  
  calculator_app
  