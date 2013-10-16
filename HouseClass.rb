class House

  attr_accessor :current_temperature, :heater_on, :air_conditioner_on
  attr_reader :max_temp, :min_temp

  def initialize(current_temperature, max_temp, min_temp)
    @current_temperature = current_temperature
    @max_temp = max_temp
    @min_temp = min_temp  
    @heater_on = false
    @air_conditioner_on = false
  end

  def temperature_max
    if current_temperature >= max_temp
      self.heater_on = false
      self.air_conditioner_on = true
      puts "Your house is at or above its max temp of #{max_temp}. Heater: OFF, Air Conditioning: ON"
    end
  end

  def temperature_min
    if current_temperature <= min_temp
      self.heater_on = true
      self.air_conditioner_on = false
      puts "Your house is at or below its min temp of #{min_temp}. Heater: ON, Air Conditioning: OFF"
    end
  end

  def update_temperature!
    self.current_temperature += 1 if heater_on
    self.current_temperature -= 2 if air_conditioner_on
    unless heater_on || air_conditioner_on  
      puts "No house appliances are on!"
    end
    puts "House temp is #{current_temperature} degrees Fahrenheit"
    temperature_min
    temperature_max
  end
end 
