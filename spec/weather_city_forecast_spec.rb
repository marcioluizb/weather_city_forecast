RSpec.describe WeatherCityForecast do
  it "has a version number" do
    expect(WeatherCityForecast::VERSION).not_to be nil
  end

  describe WeatherCityForecast::Weather do
    it "check create instance" do
      weather = WeatherCityForecast::Weather.new(ENV["APPID"])
      expect(weather).to respond_to(:class)
    end
    it "check return weather by city return hash" do
      weather = WeatherCityForecast::Weather.new(ENV["APPID"])
      expect(weather.weather_by_city('santos')).to respond_to(:hash)
    end
    it "check return argument error if not city" do
      weather = WeatherCityForecast::Weather.new(ENV["APPID"])
      expect(weather.weather_by_city()).to eq('City is required')
    end
    it "check return not found if the city not found" do
      weather = WeatherCityForecast::Weather.new(ENV["APPID"])
      expect(weather.weather_by_city('saao paulo')).to eq('404 Not Found')
    end
  end
  
end
