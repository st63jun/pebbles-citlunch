module CITLunch
  class Menu
    attr_reader :price, :name, :details

    def initialize(record)
      @price = record["price"]
      @name = record["name"]
      @details = record["details"].map {|s| s.gsub("&amp;", "&")}
    end
  end
end
