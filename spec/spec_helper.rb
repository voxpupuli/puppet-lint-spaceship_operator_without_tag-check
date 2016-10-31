unless RUBY_VERSION =~ /^1\.9/
  require 'coveralls'
  Coveralls.wear!
end

require 'puppet-lint'

PuppetLint::Plugins.load_spec_helper
