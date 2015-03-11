# encoding: utf-8

##########################
# part helpers

module HybookHelper


#####
# todo: find a better name for render_toc_countries ??


def render_toc_countries( countries, opts={} )
  buf = ''
  countries.each do |country|
  
    #<!-- fix: add to models -> countries_w_breweries_or_beers ?? -->
    # <!-- todo: use helper e.g. has_beers_or_breweries? or similar  ?? -->
    regions_count = country.regions.count
    cities_count  = country.cities.count
  
    buf << link_to_country( country, opts )
    buf << " - "
    buf << "_#{regions_count} Regions, #{cities_count} Cities_{:.count}"
    buf << "  <br>"
    buf << "\n"
  end
  buf
end


def render_cities( cities, opts={} )
  buf = ''
  cities.each do |city|
    buf << render_city( city, opts )
  end
  buf
end


def render_city( city, opts={} )
  render 'includes/_city', opts, city: city

##  tmpl       = File.read_utf8( "#{TEMPLATES_DIR}/includes/_city.md" )
##  TextUtils::PageTemplate.new( tmpl ).render( binding )
end

def render_city_idx( city, opts={} )
  render 'includes/_city-idx', opts, city: city

##  tmpl       = File.read_utf8( "#{TEMPLATES_DIR}/includes/_city-idx.md" )
##  TextUtils::PageTemplate.new( tmpl ).render( binding )
end


end # module HybookHelper
