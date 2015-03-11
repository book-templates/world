# encoding: utf-8

###############################
# link helpers

module HybookHelper

def link_to_country( country, opts={} )
  if opts[:inline].nil?
    # multi-page version
    link_to "#{country.name} (#{country.code})", "#{country.key}.html"
  else
    # all-in-one page version
    link_to "#{country.name} (#{country.code})", "##{country.key}"
  end
end

end # module HybookHelper
