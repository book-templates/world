# encoding: utf-8

##########################
# page helpers

module HybookHelper


def render_country( country, opts={} )
  render 'country', opts, country: country    ## note: assume country.md if no extension given for now

  ## tmpl       = File.read_utf8( "#{TEMPLATES_DIR}/country.md" )
  ##TextUtils::PageTemplate.new( tmpl ).render( binding )
end

def render_toc( opts={} )
  render 'toc', opts

  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/toc.md" )
  ## TextUtils::PageTemplate.new( tmpl ).render( binding )
end

def render_cities_idx( opts={} )
  render 'cities-idx', opts

  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/cities-idx.md" )
  ## TextUtils::PageTemplate.new( tmpl ).render( binding )
end


end # module HybookHelper

