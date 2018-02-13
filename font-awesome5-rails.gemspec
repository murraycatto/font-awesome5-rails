# -*- encoding: utf-8 -*-
require File.expand_path('../lib/font-awesome5-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["murraycatto"]
  gem.email         = ["murraycatto@live.co.za"]
  gem.description   = "font-awesome5-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline."
  gem.summary       = "an asset gemification of the font-awesome icon font library"
  gem.homepage      = "https://github.com/murraycatto/font-awesome5-rails"
  gem.licenses      = ["MIT", "SIL Open Font License"]

  gem.files         = `git ls-files -- {app,bin,lib,test,spec}/* {LICENSE*,Rakefile,README*}`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  gem.name          = "font-awesome5-rails"
  gem.require_paths = ["lib"]
  gem.version       = FontAwesome5::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.2"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

  gem.required_ruby_version = '>= 1.9.3'
end
