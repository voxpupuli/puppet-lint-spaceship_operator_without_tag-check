Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-spaceship_operator_without_tag-check'
  spec.version     = '0.1.1'
  spec.homepage    = 'https://github.com/voxupuli/puppet-lint-spaceship_operator_without_tag-check'
  spec.license     = 'Apache-2.0'
  spec.author      = 'Vox Pupuli'
  spec.email       = 'voxpupuli@groups.io'
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

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 5.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
end
