require "weather_city_forecast/version"
require "rest-client"
require "utils"

module WeatherCityForecast
  class Error < StandardError; end
  class Weather
    attr_reader :appid, :base_url
    include WeatherUtils::Utils

    def initialize appid
  	  @appid = appid
  	  @base_url = 'https://api.openweathermap.org/data/2.5/forecast'
    end

    def headers
      {
      'Accept': 'application/json',
      'Content-type': 'application/json'
      }
    end

    def weather_by_city(city = nil, state = nil)
      begin
        raise ArgumentError, 'City is required' unless city
        
        querystring = "?q=#{city}, #{state}&units=metric&lang=pt_br&appid=#{@appid}"
        url = @base_url + querystring
        response = RestClient.get(url, headers)
        format_data response.body
      rescue RestClient::Exception => e
        e.message
      rescue Exception => e
        e.message
      end
    end

  end
end
