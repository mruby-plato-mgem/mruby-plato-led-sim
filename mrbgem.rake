MRuby::Gem::Specification.new('mruby-plato-led-sim') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Plato developers'
  spec.description = 'Plato::LED class for simulator'

  spec.add_dependency('mruby-plato-gpio')
  spec.add_dependency('mruby-plato-gpio-sim')
  spec.add_dependency('mruby-plato-digitalio')
  spec.add_dependency('mruby-plato-digitalio-sim')
  spec.add_dependency('mruby-plato-led')
end
