#Fix the Program

class Flight
  attr_accessor :database_handle     #delete this line to fix 

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end
