#
# Plato::LED class for simulator
#
module Plato
  class LED < DigitalIO
    @@color = :red
    def initialize(pin, pullup=false, act=:low)
      super(pin, pullup, act)
      @last = :off
      $sim.cmd "LED,#{@pin},new,#{act},#{@@color.to_s}"
    end

    def on
      $sim.cmd "LED,#{@pin},on"
      @last = :on
    end

    def off
      $sim.cmd "LED,#{@pin},off"
      @last = :off
    end

    # Simulator olny
    def self.red;   @@color = :red;   self; end
    def self.green; @@color = :green; self; end
    def self.blue;  @@color = :blue;  self; end
  end
end
