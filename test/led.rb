# Plato::LED class

class Sim
  def cmd(v)
    v
  end
end
$sim = Sim.new

module Plato
  class LED < DigitalIO
    attr_reader :last
  end
end

assert('LED', 'class') do
  assert_equal(Plato::LED.class, Class)
end

assert('LED', 'superclass') do
  assert_equal(Plato::LED.superclass, Plato::DigitalIO)
end

assert('LED', 'new') do
  l1 = Plato::LED.new(0)
  l2 = Plato::LED.new(0, true)
  l3 = Plato::LED.new(0, false, :high)
  assert_true(l1 && l2 && l3)
  assert_equal(l1.last, :off)
  assert_equal(l2.last, :off)
  assert_equal(l3.last, :off)
end

assert('LED', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::LED.new}
  assert_raise(ArgumentError) {Plato::LED.new(0, false, :low, 1)}
end

assert('LED', 'on') do
  led = Plato::LED.new(0)
  led.on
  assert_equal(led.last, :on)
end

assert('LED', 'off') do
  led = Plato::LED.new(0)
  led.off
  assert_equal(led.last, :off)
end

assert('LED', 'toggle') do
  led = Plato::LED.new(0)
  led.toggle
  assert_equal(led.last, :on)
  led.toggle
  assert_equal(led.last, :off)
end
