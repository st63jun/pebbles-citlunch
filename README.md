# citlunch - CIT lunch menu API wrapper for Ruby

Gets menus of Chiba Institute of Technology's student cafeteria from
CIT Lunch API.

See https://udon.upsilo.net/citlunch/ for more API doumentation.

## SYNOPSIS
    require 'citlunch'
    
    # get today's menu
    CITLunch.get_today(:tsuda_dining).each do |menu|
      puts menu.name
      puts menu.price
      puts menu.details
    end

    CITLunch.get(:tsuda_dining, Date.today + 1) # => get tommorow's menu

## How to install
    $ gem install citlunch

## How to build
    $ git clone https://github.com/st63jun/citlunch.git
    $ cd citlunch
    $ gem build citlunch.gemspec
    $ rake install
