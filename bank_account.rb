class BankAccount
  
  # no attr_accessors would be appropriate
  attr_accessor :type
  attr_reader :customer_name
 
  def initialize(customer_name, type, acct_number)
    @customer_name = customer_name
    @type          = type
    @acct_number   = acct_number
  end
 
 
  def to_s
    "#{customer_name}: #{type}# #{@acct_number.delete('-').gsub(/\d{5}/, "*****")}"
  end
end
 
 
my_accnt = BankAccount.new("Thomas Landon", "Checking", "415-345-678") # => Thomas Landon: Checking# *****5678
 
#--Drive Code--#
my_accnt.to_s # => "Thomas Landon: Checking# *****5678"
my_accnt.customer_name # => "Thomas Landon"
my_accnt.type # => "Checking"
my_accnt.type = "Savings"
my_accnt.type # => "Savings"