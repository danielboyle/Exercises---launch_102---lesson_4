# Exercises Hard 1

# Question 1
class SecretFile
  attr_reader :data

  def initialize(secret_data)
    @data = secret_data
  end
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end

  # Answer 1
  class SecretFile
    def initialize(secret_data, logger)
      @data = secret_data
      @logger = logger
    end

    def data
      @logger.create_log_entry
      @data
    end
  end

# Question 2
class WheeledVehicle
  attr_accessor :speed, :heading

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with
    super([20,20], 80, 8.0)
  end
end

###############

class Catamaran
  attr_accessor :propeller_count, :hull_count, :speed, :heading, :range

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end

  # Answer 2
  module Moveable
    attr_accessor :speed, :heading
    attr_writer :fuel_capacity, :fuel_efficiency

    def range
      @fuel_capacity * @fuel_efficiency
    end
  end

# Question 3

  # Answer 3
  class Seacraft
    include Moveable

    attr_accessor :hull_count, :propeller_count

    def initialize(num_propellers, num_hulls, fuel_efficiency, fuel_capacity)
      @propeller_count = num_propellers
      @hull_count = num_hulls
      @fuel_efficiency = fuel_efficiency
      @fuel_capacity = fuel_capacity
    end
  end

  class Motorboat < Seacraft
    def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
      # set up 1 hull and 1 propeller
      super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
    end
  end

  class Catamaran < Seacraft
    def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
      super(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    end
  end

# Question 4

  # Answer 4
  class Seacraft

    # ... existing Seacraft code omitted ...

    # the following is added to the existing Seacraft definition
    def range
      range_by_using_fuel = super
      return range_by_using_fuel + 10
    end
  end
