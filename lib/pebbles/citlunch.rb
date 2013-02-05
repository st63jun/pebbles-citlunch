require "pebbles/citlunch/version"
require "pebbles/citlunch/client"
require "pebbles/citlunch/menu"

module CITLunch
  class << self
    def new options={}
      CITLunch::Client.new
    end

    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end
  end
end
