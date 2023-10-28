Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-spaceship_operator_without_tag-check'
  spec.version     = '1.0.1'
  spec.homepage    = 'https://github.com/voxpupuli/puppet-lint-spaceship_operator_without_tag-check'
  spec.license     = 'Apache-2.0'
  spec.author      = 'Vox Pupuli'
  spec.email       = 'voxpupuli@groups.io'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.summary     = 'A puppet-lint plugin to check that spaceship operator is called with a tag.'
  spec.description = <<-EOF
    A puppet-lint plugin to check that spaceship operator is called with a tag.
  EOF

  spec.required_ruby_version = '>= 2.7', '< 4'

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 5.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'simplecov', '~> 0.22.0'
end
