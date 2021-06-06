puppet-lint-spaceship_operator_without_tag-check
================================================

[![License](https://img.shields.io/github/license/voxpupuli/puppet-lint-spaceship_operator_without_tag-check.svg)](https://github.com/voxpupuli/puppet-lint-spaceship_operator_without_tag-check/blob/master/LICENSE)
[![Test](https://github.com/voxpupuli/puppet-lint-param-docs/actions/workflows/test.yml/badge.svg)](https://github.com/voxpupuli/puppet-lint-param-docs/actions/workflows/test.yml)
[![Release](https://github.com/voxpupuli/puppet-lint-param-docs/actions/workflows/release.yml/badge.svg)](https://github.com/voxpupuli/puppet-lint-param-docs/actions/workflows/release.yml)
[![RubyGem Version](https://img.shields.io/gem/v/puppet-lint-param-docs.svg)](https://rubygems.org/gems/puppet-lint-param-docs)
[![RubyGem Downloads](https://img.shields.io/gem/dt/puppet-lint-param-docs.svg)](https://rubygems.org/gems/puppet-lint-param-docs)
[![Donated by Camptocamp](https://img.shields.io/badge/donated%20by-camptocamp-fb7047.svg)](#transfer-notice)

A puppet-lint plugin to check that spaceship operator is called with a tag.

## Installing

### From the command line

```shell
$ gem install puppet-lint-spaceship_operator_without_tag-check
```

### In a Gemfile

```ruby
gem 'puppet-lint-spaceship_operator_without_tag-check', :require => false
```

## Checks

### Spaceship operator without tag

Calling spaceship operator (<| |>) without tag can be dangerous because it will realise all virtual resources of that type (https://tickets.puppetlabs.com/browse/PUP-3825).

#### What you have done

```puppet
class foo {
  Package <| |>
}
```

#### What you should have done

```puppet
class foo {
  Package <| tag == 'foo' |>
}
```

#### Disabling the check

To disable this check, you can add `--no-spaceship_operator_without_tag-check` to your puppet-lint command line.

```shell
$ puppet-lint --no-spaceship_operator_without_tag-check path/to/file.pp
```

Alternatively, if you’re calling puppet-lint via the Rake task, you should insert the following line to your `Rakefile`.

```ruby
PuppetLint.configuration.send('disable_spaceship_operator_without_tag')
```

## Transfer Notice

This plugin was originally authored by [Camptocamp](http://www.camptocamp.com).
The maintainer preferred that Puppet Community take ownership of the module for future improvement and maintenance.
Existing pull requests and issues were transferred over, please fork and continue to contribute here instead of Camptocamp.

Previously: https://github.com/camptocamp/puppet-lint-spaceship_operator_without_tag-check

## License

This gem is licensed under the Apache-2 license.

## Release information

To make a new release, please do:
* update the version in the gemspec file
* Install gems with `bundle install --with release --path .vendor`
* generate the changelog with `bundle exec rake changelog`
* Check if the new version matches the closed issues/PRs in the changelog
* Create a PR with it
* After it got merged, push a tag. GitHub actions will do the actual release to rubygems and GitHub Packages
