
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "weather_city_forecast/version"

Gem::Specification.new do |spec|
  spec.add_dependency "bundler", "~> 1.17"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency "rest-client"
  spec.authors = ['marcio']
  spec.description = 'A Ruby interface to the OpenWeatherMap.'
  spec.email = %w[marcio_luiz_b@yahoo.com.br]
  spec.files = %w[LICENSE.txt README.md weather_city_forecast.gemspec] + Dir['lib/**/*.rb']
  spec.homepage = 'https://github.com/marcioluizb/weather_city_forecast'
  spec.licenses = %w[MIT]
  spec.name = 'weather_city_forecast'
  spec.require_paths = %w[lib]
  spec.required_ruby_version = '>= 2.4'
  spec.summary = spec.description
  spec.version = WeatherCityForecast::VERSION
end
