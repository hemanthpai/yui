# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'yui/rails/version'

Gem::Specification.new do |s|
  s.name          = 'yui-rails-asset'
  s.version       = YUI::Rails::YUI_VERSION
  s.date          = '2013-08-27'
  s.summary       = "A gem that transforms Yahoo's YUI library into an asset pipeline friendly resource for Rails 3.1+"
  s.description   = "A gem that transforms Yahoo's YUI library version #{YUI::Rails::YUI_VERSION} into an asset pipeline friendly resource for Rails 3.1+"
  s.authors       = ["Hemanth Pai"]
  s.email         = 'hemanthpai@gmail.com'
  s.files         = Dir["vendor/**/*.*"] + Dir["lib/**/*"] + ["README", "LICENSE"]
  s.require_paths = ["lib"]
  s.homepage      = 'https://github.com/hemanthpai/yui'
  s.license       = 'MIT'
  s.extra_rdoc_files = ["LICENSE"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
  end
end