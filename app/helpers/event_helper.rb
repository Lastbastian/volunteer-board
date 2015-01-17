module EventHelper

  def self.url_escaped(event)
    address = event.address.split(' ').join('+')
    city    = event.city.split(' ').join('+')

    [address, city, event.state].join(",")
  end

end