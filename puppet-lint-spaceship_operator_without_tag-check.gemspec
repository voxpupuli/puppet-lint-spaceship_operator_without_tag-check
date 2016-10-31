Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-spaceship_operator_without_tag-check'
  spec.version     = '0.1.1'
  spec.homepage    = 'https://github.com/puppet-community/puppet-lint-spaceship_operator_without_tag-check'
  spec.license     = 'Apache-2.0'
  spec.author      = 'Puppet Community'
  spec.email       = 'mickael.canevet@camptocamp.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'A puppet-lint plugin to check that spaceship operator is called with a tag.'
  spec.description = <<-EOF
    A puppet-lint plugin to check that spaceship operator is called with a tag.
  EOF

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'mime-types', '~> 1.0' # 2.x dropped Ruby 1.8 support
  spec.add_development_dependency 'coveralls' if RUBY_VERSION >= '2.0.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'json_pure', '<= 2.0.1' if RUBY_VERSION < '2.0.0'
end
