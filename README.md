puppet-lint-spaceship_operator_without_tag-check
================================================

[![Build Status](https://img.shields.io/travis/puppet-community/puppet-lint-spaceship_operator_without_tag-check.svg)](https://travis-ci.org/puppet-community/puppet-lint-spaceship_operator_without_tag-check)
[![Gem Version](https://img.shields.io/gem/v/puppet-lint-spaceship_operator_without_tag-check.svg)](https://rubygems.org/gems/puppet-lint-spaceship_operator_without_tag-check)
[![Gem Downloads](https://img.shields.io/gem/dt/puppet-lint-spaceship_operator_without_tag-check.svg)](https://rubygems.org/gems/puppet-lint-spaceship_operator_without_tag-check)
[![Coverage Status](https://img.shields.io/coveralls/puppet-community/puppet-lint-spaceship_operator_without_tag-check.svg)](https://coveralls.io/r/puppet-community/puppet-lint-spaceship_operator_without_tag-check?branch=master)
[![Donated by Camptocamp](https://img.shields.io/badge/donated%20by-camptocamp-fb7047.svg)](#transfer-notice)

A puppet-lint plugin to check that spaceship operator is called with a tag.


## Checks

### Spaceship operator without tag

Calling spaceship operator (<| |>) without tag can be dangerous because it will realise all virtual resources of that type (https://tickets.puppetlabs.com/browse/PUP-3825).

#### What you have done

```puppet
Package <| |>
```

#### What you should have done

```puppet
Package <| virtual == true |>
```

#### Disabling the check

To disable this check, you can add `--no-spaceship_operator_without_tag_in_case-check` to your puppet-lint command line.

```shell
$ puppet-lint --no-spaceship_operator_without_tag_in_case-check path/to/file.pp
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
