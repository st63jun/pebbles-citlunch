# pebbles-citlunch - CIT lunch menu API wrapper for Ruby

Gets menus of Chiba Institute of Technology's student cafeteria from
the CIT Lunch API.

See https://udon.upsilo.net/citlunch/ for more API doumentation.

## SYNOPSIS
    require 'pebbles/citlunch'
    
    # get today's menu
    CITLunch.get_today(:tsuda_dining).each do |menu|
      puts menu.name
      puts menu.price
      puts menu.details
    end

    CITLunch.get(:tsuda_dining, Date.today - 1) # => get yesterday's menu

## How to install
    $ gem install pebbles-citlunch

## How to build
    $ git clone https://github.com/st63jun/pebbles-citlunch.git
    $ cd pebbles-citlunch
    $ rake build
    $ rake install

## License

* GPL v3

See LICENSE

