# -*- coding: utf-8 -*-
require 'spec_helper'

describe CITLunch do
  context "when get menus" do
    it "should create Menu objects from JSON" do

      entry = [{ :price => 10,
                 :name => "うまい棒",
                 :details => ["サラダ味", "めんたいこ味"]}]

      client = CITLunch::Client.new
      client.should_receive(:open).and_return(StringIO.new(entry.to_json))
      menus = client.get_today(:tsuda_dining)

      menus.first.price.should == entry.first[:price]
      menus.first.name.should == entry.first[:name]
      menus.first.details.should == entry.first[:details]
    end

    it "raise ArgumentError if illegal place specified" do
      lambda { CITLunch.get_today(:nonexistent_place) }.should raise_error(ArgumentError)
    end
  end
end
