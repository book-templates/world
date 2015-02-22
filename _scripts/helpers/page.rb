# encoding: utf-8

##########################
# page helpers


def render_country( country, opts={} )
  ## fix: use TemplateReader/Finder/Man ???
  tmpl       = File.read_utf8( "#{TEMPLATES_DIR}/country.md" )
  TextUtils::PageTemplate.new( tmpl ).render( binding )
end

def render_toc( opts={} )
  tmpl = File.read_utf8( "#{TEMPLATES_DIR}/toc.md" )
  TextUtils::PageTemplate.new( tmpl ).render( binding )
end


def render_cities_idx( opts={} )
  tmpl = File.read_utf8( "#{TEMPLATES_DIR}/cities-idx.md" )
  TextUtils::PageTemplate.new( tmpl ).render( binding )
end


