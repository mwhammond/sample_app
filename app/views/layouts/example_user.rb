class User
  attr_accessor :name, :email
  
  def initialize(attributes = {}) # emtpy hash so can have a user with no name or email yet
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    "#{@name} <#{@email}"
  end
  
end