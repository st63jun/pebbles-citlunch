require 'date'
require 'open-uri'
require 'json'
require 'pebbles/citlunch/menu'

module CITLunch
  class Client

    API_ENDPOINT = "https://udon.upsilo.net/citlunch/api"
    PLACES = [:tsuda_dining, :shiba_dining, :shiba_kissa]

    def get_today(place)
      get(place, Date.today)
    end

    def get(place, date)
      raise ArgumentError.new ("unknown place: #{place}") unless PLACES.include? place
      url = "#{API_ENDPOINT}/#{place}/#{date.strftime("%Y-%m-%d")}/menu.json"
      begin
        json = open(url).read
        JSON.parse(json).map {|r| Menu.new(r)}
      rescue OpenURI::HTTPError
        nil
      end
    end

  end
end
