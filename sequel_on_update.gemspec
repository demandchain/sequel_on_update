#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-
require 'date'
if RUBY_VERSION < '1.9.0'
  require 'lib/sequel_on_update/version'
else
  require File.expand_path('../lib/sequel_on_update/version', __FILE__)
end

Gem::Specification.new do |gem|
  gem.name     = 'sequel_on_update'
  gem.version  = Sequel::Plugins::OnUpdate::VERSION.dup
  gem.authors  = ['Kevin Tom']
  gem.date     = Date.today.to_s
  gem.email = 'kevin@kevintom.com'
  gem.homepage = 'http://github.com/kevintom/sequel_on_update'
  gem.summary = 'Sequel plugin which lets you set a hook for specific column changes'
  gem.description = gem.summary

  gem.has_rdoc = true 
  gem.require_paths = ['lib']
  gem.extra_rdoc_files = ['README.rdoc', 'LICENSE', 'CHANGELOG']
  gem.files = Dir['Rakefile', '{lib}/**/*', 'README*', 'LICENSE*', 'CHANGELOG*'] & `git ls-files -z`.split("\0")

  gem.add_dependency 'sequel', ">= 3.0.0"
end
