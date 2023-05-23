# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(value)
      @bank_account = value
    end
  
    def happiness=(value)
      @happiness = limit_value(value, 0, 10)
    end
  
    def hygiene=(value)
      @hygiene = limit_value(value, 0, 10)
    end
  
    private
  
    def limit_value(value, min, max)
      if value > max
        max
      elsif value < min
        min
      else
        value
      end
    end
  end
  
  # Example usage
  person = Person.new("John")
  puts person.name # Output: John
  
  puts person.bank_account # Output: 25
  person.bank_account = 50
  puts person.bank_account # Output: 50
  
  puts person.happiness # Output: 8
  person.happiness = 12
  puts person.happiness # Output: 10
  person.happiness = -2
  puts person.happiness # Output: 0
  
  puts person.hygiene # Output: 8
  person.hygiene = 11
  puts person.hygiene # Output: 10
  person.hygiene = -5
  puts person.hygiene # Output: 0
  
