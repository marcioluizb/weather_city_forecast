require 'json'
module WeatherUtils
  module Utils
    module_function
    
    def format_data(data)
      data_weather = Hash.new
      parse = JSON.parse(data)
      parse["list"].each_with_index do |value, index|
        data_weather[index] = {
          date: value["dt_txt"],
          temp: value["main"]["temp"].to_f.ceil,
          condition: value["weather"][0]["description"]
        }
      end
      data_weather["city"] = parse["city"]["name"]
      data_weather
    end
  end
end