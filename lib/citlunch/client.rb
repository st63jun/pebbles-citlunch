require 'date'
require 'open-uri'
require 'json'
require 'citlunch/menu'

module CITLunch
  class Client

    API_ENDPOINT = "https://udon.upsilo.net/citlunch/api"

    def get_today(place)
      get(place, Date.today)
    end

    def get(name, date)
      url = "#{API_ENDPOINT}/#{place}/#{date.strftime("%Y-%m-%d")}/menu.json"
      begin
        open(url) {|f| JSON.parse(f.read).map {|r| Menu.new(r)}}
      rescue
        nil
      end
    end
  end
end
